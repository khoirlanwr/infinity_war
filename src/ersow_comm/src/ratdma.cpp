#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <string.h>
#include <stdio.h>
#include <signal.h>
#include <pthread.h>
#include <errno.h>

#include <unistd.h>

#include <sys/time.h>
#include <sched.h>

#include <stdlib.h>

#include <ros/ros.h>

#include "ratdma/multicast.h"
#include "rtdb/rtdb_comm.h"


#define BUFFER_SIZE 		5000
#define TTUP_US 			100E3
#define COMM_DELAY_US 		4000
#define MIN_UPDATE_DELAY_US 1000

// #define DEBUG
// #define FILE_DEBUG
// #define UNSYNC


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

#ifdef FILE_DEBUG
	FILE *filedebug;
#define FDEBUG(txt, par...) \
  fprintf(filedebug, txt , ## par)
#else
#define FDEBUG(file, txt, par...)
#endif

#define NOT_RUNNING			0
#define RUNNING				1
#define INSERT				2
#define REMOVE				3
#define MAX_REMOVE_TICKS	10

#define NO	0
#define YES	1

int end;
int timer;

int MAX_DELTA;

struct timeval lastSendTimeStamp;
int delay;

int lostPackets[MAX_AGENTS];

struct _record
{
	int id;			  // id
	int size;		  // data size
	int life;		  // life time
	void* pData;	// pointer to data
};

struct _frameHeader
{
	unsigned char number;			    // agent number
	unsigned int counter;			    // frame counter
	char stateTable[MAX_AGENTS];	// table with my vision of each agent state
	int noRecs;						        // number of records
};

struct _agent
{
	char state;							          // current state
	char dynamicID;					          // position in frame
	char received;						        // received from agent in the last Ttup?
	struct timeval receiveTimeStamp;	// last receive time stamp
	int delta;							          // delta
	unsigned int lastFrameCounter;		// frame number
	char stateTable[MAX_AGENTS];		  // vision of agents state
  	int removeCounter;                // counter to move agent to not_running state
};


int myNumber;

struct _agent agent[MAX_AGENTS];

int RUNNING_AGENTS;


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



// RA-TDMA
int sync_ratdma(int agentNumber)
{
	int realDiff, expectedDiff;
  	struct itimerval it;

  	agent[agentNumber].received = YES;

  	if ((agent[agentNumber].state == NOT_RUNNING) || (agent[agentNumber].state == INSERT))
	{
		PDEBUG("*****  agent %d - NOT_RUNNING or INSERT  *****", agentNumber);
		return (1);
	}

  	// real difference with average medium comm delay
  	realDiff = (int)((agent[agentNumber].receiveTimeStamp.tv_sec - lastSendTimeStamp.tv_sec)*1E6 + agent[agentNumber].receiveTimeStamp.tv_usec - lastSendTimeStamp.tv_usec);
  	realDiff -= (int)COMM_DELAY_US; // travel time
  	if (realDiff < 0)
	{
		PDEBUG("*****  realDiff to agent %d = %d  *****", agentNumber, realDiff);
		return (2);
	}

	// expected difference
	expectedDiff = (int)((agent[agentNumber].dynamicID - agent[myNumber].dynamicID) * TTUP_US / RUNNING_AGENTS);
	if (expectedDiff < 0)
		expectedDiff += (int)TTUP_US;
	
	agent[agentNumber].delta = realDiff - expectedDiff;

	// PDEBUG("Sync mode..");
	
	// only dynamic agent 0 make adjustments
  	if (agent[myNumber].dynamicID == 0)
  	{
    	if ((agent[agentNumber].delta > delay) && (agent[agentNumber].delta < MAX_DELTA))
    	{
      		// avoid small corrections
      		if (agent[agentNumber].delta > (int)MIN_UPDATE_DELAY_US)
      		{
        		delay = agent[agentNumber].delta;
        		PDEBUG("delay between %d(%d) and %d(%d) -> %d", myNumber, agent[myNumber].dynamicID, agentNumber, agent[agentNumber].dynamicID, delay);
      		}
    	}
  	}
  	else
  	{
    	// only sync from dynamic agent 0
    	// PDEBUG("Sync from agent 0 ...");
    	if (agent[agentNumber].dynamicID == 0)
    	{
	      expectedDiff = (int)(TTUP_US - expectedDiff);
	      expectedDiff -= (int)COMM_DELAY_US; // travel time
	      it.it_value.tv_usec = (long int)(expectedDiff % (int)1E6);
	      it.it_value.tv_sec = (long int)(expectedDiff / (int)1E6);
	  	  it.it_interval.tv_usec=(__suseconds_t)(TTUP_US);
		  it.it_interval.tv_sec=0;
	      setitimer (ITIMER_REAL, &it, NULL);
    	}
  	}
    
//	PDEBUG("Delta [%d] = %d\trealDiff = %d\texpectedDiff = %d\t delay = %d", agentNumber, agent[agentNumber].delta, realDiff, expectedDiff, delay);

//	for (i=0; i < agentNumber; i++)
//		FDEBUG(filedebug, "\t");

//  FDEBUG(filedebug, "%d\n", (int)(realDiff - COMM_DELAY));

//			FDEBUG(filedebug, "Received from %1d->%1d(%4u)-->delay=%7d realDiff=%7d expectedDiff=%7d\n", agent[agentNumber].inFramePos, agentNumber, frameHeader.counter, agent[agentNumber].delta, realDiff, expectedDiff);

  return (0);
}




void update_stateTable(void)
{
  	int i, j;
	for (i=0; i<MAX_AGENTS; i++)
	{
		if (i != myNumber)
		{
			switch (agent[i].state)
			{
				case RUNNING:
					if (agent[i].received == NO)
						agent[i].state = REMOVE;
					break;
				case NOT_RUNNING:
					if (agent[i].received == YES)
						agent[i].state = INSERT;
					break;
				case INSERT:
					if (agent[i].received == NO)
						agent[i].state = NOT_RUNNING;
					else
					{
						for (j = 0; j < MAX_AGENTS; j++)
							if ((agent[j].state == RUNNING) &&
									((agent[j].stateTable[i] == NOT_RUNNING) || (agent[j].stateTable[i] == REMOVE)))
								break;
						agent[i].state = RUNNING;
					}
					break;
				case REMOVE:
					if (agent[i].received == YES)
          			{
            			agent[i].removeCounter = 0;
						agent[i].state = RUNNING;
          			}
					else
					{
						for (j = 0; j < MAX_AGENTS; j++)
							if ((agent[j].state == RUNNING) &&
									((agent[j].stateTable[i] == RUNNING) || (agent[j].stateTable[i] == INSERT)))
								break;
             			agent[i].removeCounter ++;
			            if (agent[i].removeCounter >= MAX_REMOVE_TICKS)
			            {
			               agent[i].state = NOT_RUNNING;
			               agent[i].removeCounter = 0;
			            }
					}
					break;
			}
		}
  }

  	// my state
	agent[myNumber].state = RUNNING;
}



//	*************************
//  Receive Thread
//
//  Input:
//		int *sckt = pointer of socket descriptor
//
void *receiveDataThread(void *arg)
{
  	int recvLen;
	char recvBuffer[BUFFER_SIZE];
	int indexBuffer;
	int agentNumber;
	int i;
	RTDBconf_var rec;
	int life;
	struct _frameHeader frameHeader;

	int size;
	long int ms_start, ms_ends;
	struct timeval tp2;

	while(!end)
	{
		bzero(recvBuffer, BUFFER_SIZE);
		indexBuffer = 0;

		// printf("Outside loop\n");		

		if((recvLen = receiveData(*(int*)arg, recvBuffer, BUFFER_SIZE)) > 0 )
		{
			memcpy (&frameHeader, recvBuffer + indexBuffer, sizeof(frameHeader));
			indexBuffer += sizeof(frameHeader);

			agentNumber = frameHeader.number;

      		gettimeofday(&(agent[agentNumber].receiveTimeStamp), NULL);

      		// receive from ourself
      		// not supposed to occur. just to prevent!
			if (agentNumber == myNumber)
				continue;

			// TODO
      		// correction when frameCounter overflows
			if ((agent[agentNumber].lastFrameCounter + 1) != frameHeader.counter) 
			{
				lostPackets[agentNumber] = frameHeader.counter - (agent[agentNumber].lastFrameCounter + 1);
				PERR("\nlostPackets[%d]: %d", agentNumber, lostPackets[agentNumber]);
			}
			agent[agentNumber].lastFrameCounter = frameHeader.counter;

      		// state team view from received agent
			for (i = 0; i < MAX_AGENTS; i++)
				agent[agentNumber].stateTable[i] = frameHeader.stateTable[i];

			for(i = 0; i < frameHeader.noRecs; i++)
			{
				// id
				memcpy (&rec.id, recvBuffer + indexBuffer, sizeof(rec.id));
				indexBuffer += sizeof(rec.id);

				// size
				memcpy (&rec.size, recvBuffer + indexBuffer, sizeof(rec.size));
				indexBuffer += sizeof(rec.size);

				// life
				memcpy (&life, recvBuffer + indexBuffer, sizeof(life));
				indexBuffer += sizeof(life);

        		life += (int)(COMM_DELAY_US/1E3);

				// data
				if((size = DB_comm_put (agentNumber, rec.id, rec.size, recvBuffer + indexBuffer, life)) != (int)rec.size)
				{
					PERR("Error in frame/rtdb: from = %d, item = %d, received size = %d, local size = %d", agentNumber, rec.id, rec.size, size);
					break;
				}
				
				indexBuffer += rec.size;
			}

#ifndef UNSYNC
		sync_ratdma(agentNumber);
#endif

      		// calculate difference packet received time   
			// gettimeofday(&tp2, NULL);
			// ms_ends = (tp2.tv_sec * 1000) + (tp2.tv_usec / 1000);
			// printf("Differences per received = %ld ms\n", ms_ends - ms_start);
			// ms_start = ms_ends;


    	}


	}

	return NULL;
}



//	*************************
//  Main
//  *************************
int main(int argc, char *argv[])
{
  	int sckt;
	pthread_t recvThread;
	char sendBuffer[BUFFER_SIZE];
	int indexBuffer;
	int sharedRecs;
	RTDBconf_var rec[MAX_RECS];
	unsigned int frameCounter = 0;
	unsigned short int i, j;
	int life;

	time_t start_timer, end_timer;
	double speed_rate=0, second=0;
	int cnt=0;

	std::string dev = "wlp2s0";
	char *device = &dev[0];
	
	// char *device = (char*)

	struct sched_param proc_sched;
	pthread_attr_t thread_attr;

	struct itimerval it;
	struct _frameHeader frameHeader;

	struct timeval tempTimeStamp;

	// initial ROS
    ros::init(argc, argv, "ratdma_node");
    ros::NodeHandle ratdma_node;

	// if (argc < 2)
	// {
	// 	printf("Usage: %s <interface_name>\n\n", argv[0]);
	// 	return (-1);
	// }


  	/* initializations */
  	delay = 0;
  	timer = 0;
  	end = 0;
  	RUNNING_AGENTS = 1;

  	/* Assign a real-time priority to process */
	proc_sched.sched_priority=60;
	if ((sched_setscheduler(getpid(), SCHED_FIFO, &proc_sched)) < 0)
	{
		PERRNO("setscheduler");
		return -1;
	}

	if(signal(SIGALRM, signal_catch) == SIG_ERR)
	{
		PERRNO("signal");
		return -1;
	}

	if(signal(SIGINT, signal_catch) == SIG_ERR)
	{
		PERRNO("signal");
		return -1;
	}
	

	if((sckt = openSocket(device)) == -1)
	{
		PERR("openMulticastSocket");
		printf("\nUsage: %s <interface_name>\n\n", argv[0]);
		return -1;
	}

	if(DB_init() == -1)
	{
		PERR("DB_init");
		closeSocket(sckt);
		return -1;
	}
	
	if((sharedRecs = DB_comm_init(rec)) < 1)
	{
		PERR("DB_comm_init");
		DB_free();
		closeSocket(sckt);
		return -1;
	}


#ifdef FILE_DEBUG
	if ((filedebug = fopen("log.txt", "w")) == NULL)
	{
		PERRNO("fopen");
		DB_free();
		closeSocket(sckt);
		return -1;
	}
#endif

  	/* initializations */
	for (i=0; i<MAX_AGENTS; i++)
	{
		lostPackets[i]=0;
		agent[i].lastFrameCounter = 0;
		agent[i].state = NOT_RUNNING;
    	agent[i].removeCounter = 0;
	}

	myNumber = Whoami();
  	agent[myNumber].state = RUNNING;

  	/* receive thread */
  	pthread_attr_init (&thread_attr);
	pthread_attr_setinheritsched (&thread_attr, PTHREAD_INHERIT_SCHED);
	if ((pthread_create(&recvThread, &thread_attr, receiveDataThread, (void *)&sckt)) != 0)
	{
		PERRNO("pthread_create");
		DB_free();
		closeSocket(sckt);
		return -1;
	}

	/* Set itimer to reactivate the program */
	it.it_value.tv_usec=(__suseconds_t)(TTUP_US);
	it.it_value.tv_sec=0;
	it.it_interval.tv_usec=(__suseconds_t)(TTUP_US);
	it.it_interval.tv_sec=0;
	setitimer (ITIMER_REAL, &it, NULL);

	printf("communication: STARTED in");

#ifdef UNSYNC
  printf("unsync mode...\n");
#else
  printf("sync mode...\n");
#endif 

    time(&start_timer);

  	while (!end)
	{
		pause();

		if (timer == 0)
			continue;

#ifndef UNSYNC
		// dynamic agent 0
		printf("Sync agent 0, delay = %d\n", delay);
		if ((delay > (int)MIN_UPDATE_DELAY_US) && (agent[myNumber].dynamicID == 0) && timer == 1)
		{
			printf("delay is = %d\n", delay);
      		it.it_value.tv_usec = (__suseconds_t)(delay - (int)MIN_UPDATE_DELAY_US/2);
      		it.it_value.tv_sec = 0;
	    	it.it_interval.tv_usec=(__suseconds_t)(TTUP_US);
	    	it.it_interval.tv_sec=0;
      		setitimer (ITIMER_REAL, &it, NULL);
      		delay = 0;
      		continue;
		}
#endif

		timer = 0;

		indexBuffer = 0;
		bzero(sendBuffer, BUFFER_SIZE);
		
    	update_stateTable();

    	// update dynamicID
		j = 0;	
		for (i = 0; i < MAX_AGENTS; i++)
		{
			if ((agent[i].state == RUNNING) || (agent[i].state == REMOVE))
			{
				agent[i].dynamicID = j;
				j++;
			}
			agent[myNumber].stateTable[i] = agent[i].state;
		}
		RUNNING_AGENTS = j;

		MAX_DELTA = (int)(TTUP_US/RUNNING_AGENTS * 2/3);

		// frame header
		frameHeader.number = myNumber;
		frameHeader.counter = frameCounter;
		frameCounter ++;
		for (i = 0; i < MAX_AGENTS; i++)
			frameHeader.stateTable[i] = agent[myNumber].stateTable[i];
		frameHeader.noRecs = sharedRecs;

		memcpy(sendBuffer + indexBuffer, &frameHeader, sizeof(frameHeader));
		indexBuffer += sizeof(frameHeader);

		// printf("indexBuffer phase[1] = %d bytes\n", indexBuffer);

		for(i = 0; i < sharedRecs; i++)
		{
			// id
			memcpy(sendBuffer + indexBuffer, &rec[i].id, sizeof(rec[i].id));
			indexBuffer += sizeof(rec[i].id);

			// size
			memcpy(sendBuffer + indexBuffer, &rec[i].size, sizeof(rec[i].size));
			indexBuffer += sizeof(rec[i].size);

			// life and data
			life = DB_get(myNumber, rec[i].id, sendBuffer + indexBuffer + sizeof(life));
			memcpy(sendBuffer + indexBuffer, &life, sizeof(life));
			indexBuffer = indexBuffer + sizeof(life) + rec[i].size;

			// printf("record id = %d. record size = %d. indexBuffer now = %d\n", rec[i].id, rec[i].size, indexBuffer);
		}

		if (indexBuffer > BUFFER_SIZE)
		{
			PERR("Pretended frame is bigger that the available buffer.");
			PERR("Please increase the buffer size or reduce the number of disseminated records");
			break;
		}
	
//		FDEBUG (filedebug, "config time = %d", (int)((tempTimeStamp.tv_sec - start.tv_sec)*1E6 + tempTimeStamp.tv_usec - start.tv_usec));

//		FDEBUG(filedebug, "%d\n", (int)((tempTimeStamp.tv_sec - lastSendTimeStamp.tv_sec)*1E6 + tempTimeStamp.tv_usec - lastSendTimeStamp.tv_usec));

//		FDEBUG (filedebug, "send from %1d->%1d(%4u)-->TTUP=%6d\n", agent[myNumber].inFramePos, myNumber, frameHeader.counter, (int)((tempTimeStamp.tv_sec - lastSendTimeStamp.tv_sec)*1E6 + tempTimeStamp.tv_usec - lastSendTimeStamp.tv_usec));
		// int n_data = ;
		if ( sendData(sckt, sendBuffer, indexBuffer) != indexBuffer)
			PERRNO("Error sending data");
		// else printf("Successfully send = %d\n", indexBuffer);
		// else printf("Sending %d bytes data. Index buffer = %d. Shared recs = %d data\n", indexBuffer, indexBuffer, sharedRecs);

		gettimeofday (&tempTimeStamp, NULL);
		lastSendTimeStamp.tv_sec = tempTimeStamp.tv_sec;
		lastSendTimeStamp.tv_usec = tempTimeStamp.tv_usec;

    	// reset values for next round
		for (i=0; i<MAX_AGENTS; i++)
		{
			agent[i].delta = 0;
			agent[i].received = NO;
    	}


    	// end timer
    	time(&end_timer);
    	second = difftime(end_timer, start_timer);
    	++ cnt;

    	speed_rate = cnt / second;
    	printf("Speed, %d iterations per second\n", (int)speed_rate);
	}

	FDEBUG (filedebug, "\nLost Packets: \n");
	for (i=0; i<MAX_AGENTS; i++)
		FDEBUG (filedebug, "%d\t", lostPackets[i]);
	FDEBUG (filedebug, "\n");
	
	printf("communication: STOPPED.\nCleaning process...\n");

#ifdef FILE_DEBUG
	fclose (filedebug);
#endif

	closeSocket(sckt);

	pthread_join(recvThread, NULL);

	DB_free();

	printf("communication: FINISHED.\n");

	return 0;
}
