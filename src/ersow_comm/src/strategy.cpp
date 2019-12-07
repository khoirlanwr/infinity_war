#include <stdio.h>
#include <ros/ros.h>
#include <errno.h>
#include <signal.h>

#include "rtdb/rtdb_user.h"
#include "rtdb/rtdb_api.h"
#include "lib/loc.h"
#include "lib/localization.h"
#include "lib/state.h"
#include "lib/feedback.h"
#include "lib/target.h"
#include "lib/vector.h"


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

typedef struct _BSData
{
	int m_value;

	command m_agent1_command;
	command m_agent2_command;
	command m_agent3_command;
	target m_agent1_target;
	target m_agent2_target;
	target m_agent3_target;
	vector m_ball;
	localization m_localization_data;
	feedback m_feedback_data;

} BSData;

BSData DataBS;

// Global variable
int end;
int timer;

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

//	*************************
//  Random value
//	
int random_value()
{
	int upper = 200; 
	int lower = 10;

	return (int)((rand() % (upper - lower + 1)) + lower);
}


void setData(void)
{
	DataBS.m_agent1_command.state = 110; DataBS.m_agent1_command.mode = 99;
	DataBS.m_agent2_command.state = 120; DataBS.m_agent2_command.mode = 99;
	DataBS.m_agent3_command.state = 311; DataBS.m_agent3_command.mode = 99;

	DataBS.m_agent1_target.x = random_value();
	DataBS.m_agent1_target.y = random_value();
	DataBS.m_agent1_target.t = 190;

	DataBS.m_agent2_target.x = random_value();
	DataBS.m_agent2_target.y = random_value();
	DataBS.m_agent2_target.t = 192;

	DataBS.m_agent3_target.x = random_value();
	DataBS.m_agent3_target.y = random_value();
	DataBS.m_agent3_target.t = 194;

	DataBS.m_ball.x = 199;
	DataBS.m_ball.y = 87;
    DataBS.m_ball.ball_detected = 1;
	

	DataBS.m_localization_data.flag = 1;
	DataBS.m_localization_data.x = random_value();
	DataBS.m_localization_data.y = random_value();
	DataBS.m_localization_data.t = random_value();

	// DataBS.m_feedback_data.pass = 0;
	// DataBS.m_feedback_data.condition = 99;	
}


int main(int argc, char *argv[])
{
    // Init ROS Node
    ros::init(argc, argv, "strategy_node");
    ros::NodeHandle strategy_node;

    // initial RTDB
    if (DB_init() == -1)
    	return -1;

	if(signal(SIGINT, signal_catch) == SIG_ERR)
	{
		PERRNO("signal");
		return -1;
	}

		
    // init global var
    end = 0;
    timer = 0;

    while(!end) 
    {
    	// TODO
    	// Put data to be disseminated to multicast group
    	setData();
    	
    	if (DB_put(COMMAND_OKTO, &DataBS.m_agent1_command) == -1) 
    	{
    		PERRNO("DB_put: COMMAND_OKTO");
    		return -1;
    	}

    	if (DB_put(TARGET_OKTO, &DataBS.m_agent1_target) == -1) 
    	{
    		PERRNO("DB_put: TARGET_OKTO");
    		return -1;
    	}

    	if (DB_put(COMMAND_HENDRO, &DataBS.m_agent2_command) == -1) 
    	{
    		PERRNO("DB_put: COMMAND_HENDRO");
    		return -1;
    	}

    	if (DB_put(TARGET_HENDRO, &DataBS.m_agent2_target) == -1) 
    	{
    		PERRNO("DB_put: TARGET_HENDRO");
    		return -1;
    	}

    	if (DB_put(COMMAND_JAMIL, &DataBS.m_agent3_command) == -1) 
    	{
    		PERRNO("DB_put: COMMAND_JAMIL");
    		return -1;
    	}

    	if (DB_put(TARGET_JAMIL, &DataBS.m_agent3_target) == -1) 
    	{
    		PERRNO("DB_put: TARGET_JAMIL");
    		return -1;
    	}


    	if (DB_put(LOCALIZATION_DATA, &DataBS.m_localization_data) == -1) 
    	{
    		PERRNO("DB_put: LOCALIZATION_DATA");
    		return -1;
    	}

    	if (DB_put(VECTOR_BALL, &DataBS.m_ball) == -1) 
    	{
    		PERRNO("DB_put: VECTOR_BALL");
    		return -1;
    	}    	

    	if (DB_put(FEEDBACK, &DataBS.m_feedback_data) == -1) 
    	{
    		PERRNO("DB_put: FEEDBACK");
    		return -1;
    	}
    }

    DB_free();
	return 0;
}