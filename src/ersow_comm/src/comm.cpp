#include <stdio.h>
#include <ros/ros.h>
#include <errno.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>
#include <errno.h>

#include <unistd.h>
#include <time.h>

#include <sys/time.h>

#include <stdlib.h>

// Include rtdb library
#include "rtdb/rtdb_user.h"
#include "rtdb/rtdb_api.h"

// Include message library  
#include "ersow_comm/data_agent0.h"
#include "ersow_comm/data_agent1.h"
#include "ersow_comm/data_agent2.h"
#include "ersow_comm/data_agent3.h"

// Include type file library  
#include "lib/loc.h"
#include "lib/vector.h"
#include "lib/feedback.h"
#include "lib/state.h"
#include "lib/localization.h"
#include "lib/target.h"

#define PERRNO(txt) \
	printf("ERROR: (%s / %s): " txt ": %s\n", __FILE__, __FUNCTION__, strerror(errno))

#define PERR(txt, par...) \
	printf("ERROR: (%s / %s): " txt "\n", __FILE__, __FUNCTION__, ## par)

#ifdef DEBUG
#define PDEBUG(txt, par...) \
	printf("DEBUG: (%s / %s): " txt "\n", __FILE__, __FUNCTION__, ## par)
#else
#define PDEBUG(txt, par...)
#endif

#define CONNECTED 		1
#define DISCONNECTED	0

// #define DEBUG_AGENT1
// #define DEBUG_AGENT2
#define DEBUG_AGENT3
// #define DEBUG_REFEREE

typedef struct _ref
{
	int socket;
	int state;
	char isConnected;
	char* address;
	int port;
} _referee;

_referee referee;


typedef struct _agents
{
    int m_value;
    pos m_pos;
    vector m_vector_ball;
    feedback m_feedback;

} agent;
    

typedef struct _self_agent
{
   int m_value;

   command m_agent01_command;
   command m_agent02_command;
   command m_agent03_command;

   target m_agent01_target;
   target m_agent02_target;
   target m_agent03_target;

   vector m_vector_ball;
   localization m_localization;
   feedback m_feedback;


} self_agent;

// Global var
int end;
int timer;
double delay;


//	*************************
//  Signal catch
//
static void signal_catch(int sig)
{
	if (sig == SIGINT)
		end = 1;
	else
		if (sig == SIGALRM)
			timer++;
}

// *************************
//   sleep function
// *************************
void sleep(double delay)
{
    time_t timer0, timer1;

    time(&timer0);

    do
    {
        time(&timer1);
    } while(difftime(timer1, timer0)<delay);
}

void *listenReferee(void*)
{	
	int new_conn_ref;
	char echobuffer[2] = "S";
	
	while(!end)
	{
		if (referee.isConnected == CONNECTED)
		{
			// just receive data
			int retval;
			int error;
            struct timeval tv;
            int nbytes;

            /* -------------- checking file descriptor ------------- */
            socklen_t len = sizeof(error);
            if((retval = getsockopt(referee.socket, SOL_SOCKET, SO_ERROR, &error, &len)) != 0) 
            {
                fprintf(stderr, "getting error socket code: %s\n", strerror(retval));
                exit(1);
            }

            if(error != 0) {
                fprintf(stderr, "socket error: %s\n", strerror(error));
            }


            /* -------------- Set timeout ----------------- */
            tv.tv_sec  = 0;          /* Secs Timeout */
            tv.tv_usec = 10000;     /*  set timeout 10ms */

            if (setsockopt(referee.socket, SOL_SOCKET, SO_RCVTIMEO, (struct timeval *)&tv, sizeof(struct timeval)) != 0) 
            {                
                perror("setsockopt: rcvtimeo");
                exit(1);
            }

            /* -------------- Start receiving data from referee ---------- */
            int size_to_recv = 2;

            if((nbytes = recv(referee.socket, echobuffer, size_to_recv, 0)) > 0) 
            // {
            //     fprintf(stderr, "[Error] Not receiving data from refbox\n");    
            // } else 
            {
                echobuffer[nbytes] = '\0';
                fprintf(stdout, "connection: %d, State %s, %d Bytes\n",referee.socket, echobuffer,nbytes);    
                fprintf(stdout, "state refbox: %d\n", int(echobuffer[nbytes-1]));
                referee.state = int(echobuffer[nbytes-1]);
            }
            
    
            fflush(stdout);			

		} else if (referee.isConnected == DISCONNECTED) {
			
			// create socket connection
			referee.socket = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);

            /* ------------- Set-up referee address from struct ---------------- */ 
            struct sockaddr_in referee_address;
            referee_address.sin_family = AF_INET;
            
            referee_address.sin_addr.s_addr = inet_addr(referee.address);
            referee_address.sin_port = htons(referee.port);
        
            /* --------------- Create connection ------------------   */    
            new_conn_ref = connect(referee.socket,(struct sockaddr *)&referee_address, sizeof(referee_address));
            
            /* ---------------- Set flag connection --------------- */ 
            if(new_conn_ref < 0) 
            {
                referee.isConnected = DISCONNECTED;
                close(referee.socket);            
            } 
            else referee.isConnected = CONNECTED;
                // ROS_INFO("Connected to refbox");    
		}
	}
}

int main(int argc, char *argv[])
{
	pthread_t refereeThread;
	pthread_attr_t thread_attr;

    // Initial agents
    self_agent Self;
    agent agent01;
    agent agent02;
    agent agent03;


    // initial ros 
    ros::init(argc, argv, "comm_node");
    ros::NodeHandle comm_node;

	if(signal(SIGINT, signal_catch) == SIG_ERR)
	{
		PERRNO("signal");
		return -1;
	}

    // initial DB
    if (DB_init() != 0)
        return -1;


	// initial referee variable
	referee.isConnected = DISCONNECTED;
	referee.address = "172.16.0.11";
	referee.port = 28097;

    // init global var
    end = 0;
    timer = 0;
    delay = 0.1;

#ifdef DEBUG_REFEREE
  	/* referee thread */
  	pthread_attr_init (&thread_attr);
	pthread_attr_setinheritsched (&thread_attr, PTHREAD_INHERIT_SCHED);
	if ((pthread_create(&refereeThread, &thread_attr, listenReferee, NULL)) != 0)
	{
		PERRNO("pthread_create");
		close(referee.socket);
		return -1;
	}
#endif

    int lifetime;
    float averageLifetime;
    float sumLifetime = 0, sumLifetime_agent2=0, sumLifetime_agent3=0;;
    int cycle = 0;

    while(!end) 
    {
    	// TODO   
        // Get data from RTDB to be visualized
#ifdef DEBUG_AGENT1        
        // printf("\n-------------- Agent1 -----------------\n");
        lifetime = DB_get(Agent1, VALUE, &agent01.m_value);
        // printf("lifetime = %d, value = %d\n", lifetime, agent01.m_value);

        lifetime = DB_get(Agent1, LOC, &agent01.m_pos);
        // printf("lifetime = %d, Agent1 posx | posy | post = %d | %d | %d\n", lifetime, agent01.m_pos.x, agent01.m_pos.y, agent01.m_pos.t);

        lifetime = DB_get(Agent1, VECTOR, &agent01.m_vector_ball);
        // printf("lifetime = %d, Agent1 ballx | bally = %d | %d\n", lifetime, agent01.m_vector_ball.x, agent01.m_vector_ball.y);

        lifetime = DB_get(Agent1, FEEDBACK, &agent01.m_feedback);
        // printf("lifetime = %d, Agent1 feedback pass | condition = %d | %d\n", lifetime, agent01.m_feedback.pass, agent01.m_feedback.condition);

        sumLifetime += lifetime;
#endif

#ifdef DEBUG_AGENT2        
        // printf("\n\n-------------- Agent2 -----------------\n");
        lifetime = DB_get(Agent2, VALUE, &agent02.m_value);
        // printf("lifetime = %d, value = %d\n", lifetime, agent02.m_value);

        lifetime = DB_get(Agent2, LOC, &agent02.m_pos);
        // printf("lifetime = %d, Agent2 posx | posy | post = %d | %d | %d\n", lifetime, agent02.m_pos.x, agent02.m_pos.y, agent02.m_pos.t);

        lifetime = DB_get(Agent2, VECTOR, &agent02.m_vector_ball);
        // printf("lifetime = %d, Agent2 ballx | bally = %d | %d\n", lifetime, agent02.m_vector_ball.x, agent02.m_vector_ball.y);

        lifetime = DB_get(Agent2, FEEDBACK, &agent02.m_feedback);
        // printf("lifetime = %d, Agent2 feedback pass | condition = %d | %d\n", lifetime, agent02.m_feedback.pass, agent02.m_feedback.condition);

        sumLifetime_agent2 += lifetime;
#endif

#ifdef DEBUG_AGENT3        
        // printf("\n-------------- Agent3 -----------------\n");
        lifetime = DB_get(Agent3, VALUE, &agent03.m_value);
        // printf("lifetime = %d, value = %d\n", lifetime, agent03.m_value);

        lifetime = DB_get(Agent3, LOC, &agent03.m_pos);
        // printf("lifetime = %d, Agent3 posx | posy | post = %d | %d | %d\n", lifetime, agent03.m_pos.x, agent03.m_pos.y, agent03.m_pos.t);

        lifetime = DB_get(Agent3, VECTOR, &agent03.m_vector_ball);
        // printf("lifetime = %d, Agent3 ballx | bally = %d | %d\n", lifetime, agent03.m_vector_ball.x, agent03.m_vector_ball.y);

        lifetime = DB_get(Agent3, FEEDBACK, &agent03.m_feedback);
        // printf("lifetime = %d, Agent3 feedback pass | condition = %d | %d\n", lifetime, agent03.m_feedback.pass, agent03.m_feedback.condition);
        sumLifetime_agent3 += lifetime;
#endif


        // sleep(delay);
        cycle++;        
    }


    // count average
    // averageLifetime = sumLifetime/ cycle; 
    // printf("averageLifetime agent01 = %fms\n", averageLifetime);

    // averageLifetime = sumLifetime_agent2/ cycle;
    // printf("averageLifetime agent02 = %fms\n", averageLifetime);

    printf("Avrg lifetime agent01|agent02|agent03 = %fms| %fms| %fms\n", 
        sumLifetime/cycle, sumLifetime_agent2/cycle, sumLifetime_agent3/cycle);

    pthread_join(refereeThread, NULL);
    close(referee.socket);
    DB_free();

    printf("\ncomm_node: FINISHED\n");
    
	return 0;
}