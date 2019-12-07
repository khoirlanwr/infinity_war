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

#include "lib/feedback.h"
#include "lib/loc.h"
#include "lib/localization.h"
#include "lib/state.h"
#include "lib/target.h"
#include "lib/vector.h"

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

#define MAX_ERSOW			3
#define ERSOW_JAMIL			3
#define ERSOW_HENDRO		2
#define ERSOW_OKTO			1
#define ERSOW_BASE 			0  

#define POSX 	0
#define POSY 	1
#define POST 	2

int end;
int timer, timer_sig;

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


struct _header 
{
	unsigned int counterFrame;	// 4 bytes counter frame robot 
	char stateTable[MAX_AGENTS];	// 4 bytes table (masing - masing state robot)
	unsigned short int dataSize;	// 2 bytes informasi ukuran data robot
	unsigned char indexAgent;	// 1 byte index robot + 1 byte padding
};

struct _baseData
{
	unsigned char state[3];	// 3 bytes data (state masing - masing robot)
	unsigned char mode[3];	// 3 bytes data (mode masing - masing robot)
		
	short int target_okto[3];	// 2*3 -> 6 bytes data target posisi robot okto
	short int target_hendro[3];	// 2*3 -> 6 bytes data target posisi robot hendro
	short int target_jamil[3]; 	// 2*3 -> 6 bytes data target posisi robot jamil

	unsigned short int ball_position[2];	// 2*2 -> 4 bytes data posisi bola 
	char ball_detect;	// 1 byte data state deteksi bola 

	char localization_flag;	// 1 byte data flag lokalisasi robot
	short int localization[3];	// 2*3 bytes data posisi lokalisasi robot
};


struct _robotData
{
	short int position[3];	// 2*3 -> 6 bytes data posisi robot 
	short int value;	// 2 bytes data robot berisi value robot (value opsional) 

	unsigned char ball_detect; // 1 byte data informasi deteksi bola
	unsigned short int ball_position[2];	// 2*2 -> 4 bytes data posisi koordinat bola  
};



int myNumber = SELF;

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
		if (sig == SIGALRM) {
			timer ++;
			timer_sig ++;
		}
}



// Fungsi sinkronisasi schedule
int sync_ratdma(unsigned char indexAgent)
{	
	int realDiff, expectedDiff;
	struct itimerval timer;

	// update state dari robot 
	agent[indexAgent].received = YES;

	// hitung realDiff
	// algoritma = waktuKirimTerakhir - waktuTerimaDataRobotIndexAgent
	realDiff = (int)((agent[indexAgent].receiveTimeStamp.tv_sec - lastSendTimeStamp.tv_sec)*1E6 + (agent[indexAgent].receiveTimeStamp.tv_usec - lastSendTimeStamp.tv_usec));
	realDiff -= (int)COMM_DELAY_US; // travel time
  	if (realDiff < 0)
	{
		printf("*****  realDiff to agent %d = %d  *****", indexAgent, realDiff);
		return (2);
	}

	// hitung expectedDiff 
	// algoritma = (dynamicIDAgent - dynamicIDSelfAgent) * TTUP/RUNNING_AGENTS 
	expectedDiff = (int)((agent[indexAgent].dynamicID - agent[SELF].dynamicID) * TTUP_US/RUNNING_AGENTS);
	if (expectedDiff < 0)
		expectedDiff += (int)TTUP_US;

	// selisih waktu antara waktu real dan perhitungan
	agent[indexAgent].delta = realDiff - expectedDiff;

	// kondisional sync apabila selfagent adalah 0 atau tidak
	if (agent[SELF].dynamicID == 0)
	{
		if ((agent[indexAgent].delta > delay) && (agent[indexAgent].delta < MAX_DELTA))
		{
			if (agent[indexAgent].delta > (int)MIN_UPDATE_DELAY_US) 
			{
				delay = agent[indexAgent].delta;
        		printf("delay between %d(%d) and %d(%d) -> %d\n", SELF, agent[SELF].dynamicID, indexAgent, agent[indexAgent].dynamicID, delay);				
			}
		}
	} 
	else 
	{
		// jika menerima data dari agent dynamicID 0 
		if(agent[indexAgent].dynamicID == 0)
		{
			expectedDiff = (int)(TTUP_US - expectedDiff);
			expectedDiff -= (int)COMM_DELAY_US; //travel time
			timer.it_value.tv_usec = (long int)(expectedDiff % (int)1E6);
			timer.it_value.tv_sec =(long int)(expectedDiff / (int)1E6);
			timer.it_interval.tv_usec = (__suseconds_t)(TTUP_US);
			timer.it_interval.tv_sec =0;
			setitimer(ITIMER_REAL, &timer, NULL); 
		}	
	}


	return (0);
}


void update_stateTable(void)
{
  	int i, j;
	for (i=0; i<MAX_AGENTS; i++)
	{
		if (i != SELF)
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
	agent[SELF].state = RUNNING;
}



void setData(struct _baseData &baseData)
{
	baseData.state[ERSOW_OKTO] = 99;
	baseData.state[ERSOW_HENDRO] = 99;
	baseData.state[ERSOW_JAMIL] = 99;

	baseData.mode[ERSOW_OKTO] = 101;
	baseData.mode[ERSOW_HENDRO] = 102;
	baseData.mode[ERSOW_JAMIL] = 103;

	baseData.target_okto[POSX] = 188;
	baseData.target_okto[POSY] = 100;
	baseData.target_okto[POST] = 99;

	baseData.target_hendro[POSX] = 512;
	baseData.target_hendro[POSY] = 99;
	baseData.target_hendro[POST] = 250;

	baseData.target_jamil[POSX] = 511;
	baseData.target_jamil[POSY] = 91;
	baseData.target_jamil[POST] = 251;

	baseData.ball_position[POSX] = 999;
	baseData.ball_position[POSY] = 1001;

	baseData.ball_detect = 1;
	baseData.localization_flag = 9;

	baseData.localization[POSX] = 19;
	baseData.localization[POSY] = 20;
	baseData.localization[POST] = 0;
}


// fungsi Threading untuk menerima data dari masing - masing robot 
void *recvThread(void *arg)
{
	// arg = file socket
	// define buffer terima data
	char recvBuffer[BUFFER_SIZE];
	int indexBuffer =0;

	// check panjang data
	int recvLen;

	// variable simpan index agent
	unsigned char recvIndex;

	// object header frame dan main data
	struct _header header; 
	struct _robotData robotData;

	// looping variable
	int i,j;

	while(!end)
	{
		// reset isi buffer dan index buffer
		bzero(recvBuffer, BUFFER_SIZE);
		indexBuffer = 0;

		// kondisional apabila ada data yang masuk
		if ((recvLen = receiveData(*(int*)arg, recvBuffer, BUFFER_SIZE)) > 0)
		{
			// memcpy operations 
			memcpy(&header, recvBuffer + indexBuffer, sizeof(header));
			indexBuffer += sizeof(header);

			// simpan index agent dari header dan waktu terima
			recvIndex = header.indexAgent;
			gettimeofday(&agent[recvIndex].receiveTimeStamp, NULL);
			
			// perhitungan lost packets 
			if ((agent[recvIndex].lastFrameCounter + 1) != (header.counterFrame))
			{
				// lost packet happen!
				lostPackets[recvIndex] = (header.counterFrame - (agent[recvIndex].lastFrameCounter + 1));
				PERR("lostPackets[%d] = %d packets\n", recvIndex, lostPackets[recvIndex]);
			}
			agent[recvIndex].lastFrameCounter = header.counterFrame;

			// update state table dari frame header 
			for (i = 0; i < MAX_AGENTS; i++)
				agent[recvIndex].stateTable[i] = header.stateTable[i];

			// memory operation di main data
			memcpy(&robotData, recvBuffer + indexBuffer, sizeof(robotData));
			indexBuffer += sizeof(robotData);


			// hitung lost packets

#ifdef DEBUG_RECV			
			// debugging data header dan main data
			printf("id = %d\t", header.indexAgent);
			printf("counterFrame = %d\t", header.counterFrame);
			printf("posisi x|y|t = %d|%d|%d\n", 
				robotData.position[POSX], robotData.position[POSY], robotData.position[POST]);
#endif
			// mulai sinkronisasi schedule
			sync_ratdma(recvIndex);
		}

	}

}

//	*************************
//  Main
//  *************************
int main(int argc, char *argv[])
{
	// create socket connection
	int socket;
	std::string dev = "wlp2s0";  // wlp2s0 for wireless, enp3s0 for ethernet
	char *device = &dev[0];

	// open socket connection
	if((socket = openSocket(device)) == -1)
	{
		PERRNO("openSocket");
		return -1;
	}

	// initial signal signal alarm dan signal interrupt
	if ((signal(SIGALRM, signal_catch)) == SIG_ERR)
	{
		PERRNO("signal");
		closeSocket(socket);
		return -1;
	}

	if ((signal(SIGINT, signal_catch)) == SIG_ERR)
	{
		PERRNO("signal");
		closeSocket(socket);
		return -1;
	}

	// start while forever
	end=0;

	// threading receiver data robot
	//   	/* receive thread */

	pthread_t IDrecvThread;
	pthread_attr_t thread_attr;

  	pthread_attr_init (&thread_attr);
	pthread_attr_setinheritsched (&thread_attr, PTHREAD_INHERIT_SCHED);
	if ((pthread_create(&IDrecvThread, &thread_attr, recvThread, (void *)&socket)) != 0)
	{
		PERRNO("pthread_create");
		closeSocket(socket);
		return -1;
	}

	// initial data untuk dikirim dan variable time
	struct _header header;
	struct _baseData baseData;
	struct timeval tempTimestamp;

	// siapkan buffer untuk dikirim
	char sendBuffer[BUFFER_SIZE];
	int indexBuffer = 0;

	setData(baseData);

	// Initial timer sesuai time update period
	struct itimerval timer;	
	timer.it_value.tv_usec = (__suseconds_t)(TTUP_US);
	timer.it_value.tv_sec = 0;
	timer.it_interval.tv_usec = (__suseconds_t)(TTUP_US);
	timer.it_interval.tv_sec = 0;
	setitimer(ITIMER_REAL, &timer, NULL);			


	// reset variable dynamic
	for(int i=0; i<MAX_AGENTS; i++)
	{
		lostPackets[i] = 0;
		agent[i].state = NOT_RUNNING;
		agent[i].lastFrameCounter = 0;
	}

	// reset counter header 
	header.counterFrame =0;

#ifdef GETFREQ
	// set timer untuk hitung freq
	time_t timer0, timer1;
	int cnt=0, sum=0;
	double sec,freq;

	time(&timer0);
#endif

	while (!end)
	{	
		// kondisional timer_sig berdasarkan alarm 
		if (timer_sig == 0)
			continue;

		// update isi stateTable seluruh robot
		update_stateTable();

		// update variable dynamic ID agents dan jumlah robot running
		int j=0;
		for(int i=0; i<MAX_AGENTS; i++)
		{
			if ((agent[i].state == RUNNING) || (agent[i].state == REMOVE))
			{
				agent[i].dynamicID = j;
				j++;
			}
			agent[SELF].stateTable[i] = agent[i].state;	// agent[i].state output dari update_stateTable
		}

		RUNNING_AGENTS = j;
		MAX_DELTA = (int)((TTUP_US/RUNNING_AGENTS) * 2/3);

		// debug
		// printf("RUNNING_AGENTS = %d\n", RUNNING_AGENTS);

		// isi counterFrame dan size di header
		// set isi header
		header.indexAgent = ERSOW_BASE;		
		for(int i=0; i<MAX_AGENTS; i++)
			header.stateTable[i] = agent[SELF].stateTable[i];
		header.stateTable[ERSOW_BASE] = RUNNING;

		header.counterFrame ++;
		header.dataSize = sizeof(baseData);

		// kirim data dengan multicast reset isi buffer kirim
		bzero(sendBuffer, BUFFER_SIZE);

		// operasi memcpy untuk copy data dari object struct ke buffer
		memcpy(sendBuffer + indexBuffer, &header, sizeof(header));
		indexBuffer += sizeof(header);

		// memcpy copy isi data ke dataframe
		memcpy(sendBuffer + indexBuffer, &baseData, sizeof(baseData));		
		indexBuffer += sizeof(baseData);

		// printf("data = %d bytes\n", indexBuffer);	

		// kirim data dengan socket
		if (indexBuffer > BUFFER_SIZE) 
		{
			printf("Error, data size is overflow.\n");
			closeSocket(socket);
			return -1;
		} 

		if ((sendData(socket, sendBuffer, indexBuffer)) != indexBuffer) 
		{
			PERRNO("sendData");
			closeSocket(socket);
			return -1;
		}

		// catat waktu pengiriman terakhir
		gettimeofday(&tempTimestamp, NULL);
		lastSendTimeStamp.tv_sec = tempTimestamp.tv_sec;
		lastSendTimeStamp.tv_usec = tempTimestamp.tv_usec;

#ifdef GETFREQ
		// timer fps
		time(&timer1);
		sec = difftime(timer1, timer0);
		cnt ++;

		freq = cnt /sec;
		printf("freq = %g\n", freq);	
		sum += (int)freq;
#endif


		// reset variable received agent
		for(int i=0; i<MAX_AGENTS; i++)
		{
			agent[i].received = NO;
			agent[i].delta = 0;
		}

		// sebelum looping berakhir
		timer_sig = 0;
		indexBuffer = 0;
	}


#ifdef GETFREQ	
	printf("Communication finished.\tsum = %d, cnt = %d, freq kirim = %d\n", sum, cnt, (int)(sum/cnt));
#endif

	// closing socket 
	closeSocket(socket);
	return 0;
}
