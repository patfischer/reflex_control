#include <string>
#include <memory>

#include <boost/shared_ptr.hpp>
#include <boost/dynamic_bitset.hpp>

#include <ros/ros.h>
#include <ros/node_handle.h>
#include <ros/time.h>

#include <Eigen/Dense>

#include <actionlib/client/action_client.h>

#include <reflex_control/FollowWaypointsAction.h>
#include <geometry_msgs/Pose.h>

using namespace reflex_control;

typedef actionlib::ActionClient<reflex_control::FollowWaypointsAction> ActionClient;
typedef ActionClient::GoalHandle GoalHandle;

bool fillGoalMsg(FollowWaypointsGoal* goalPtr, double wp[7], double v=-1, int32_t t=-1) {
	if (v>-1 && t>-1){
		return false;
	}
	if (v<0 && t<0){
		goalPtr->velocities.resize(1);
		goalPtr->velocities[0] = 1;
	}
	if (v>0){
		goalPtr->velocities.resize(1);
		goalPtr->velocities[0] = 1;
	}
	if (t>0){
		goalPtr->segment_durations.resize(1);
		goalPtr->segment_durations[0] = ros::Duration(t);
	}
	goalPtr->waypoints.resize(1);
	goalPtr->waypoints[0].position.x = wp[0];
	goalPtr->waypoints[0].position.y = wp[1];
	goalPtr->waypoints[0].position.z = wp[2];
	goalPtr->waypoints[0].orientation.x = wp[3];
	goalPtr->waypoints[0].orientation.y = wp[4];
	goalPtr->waypoints[0].orientation.z = wp[5];
	goalPtr->waypoints[0].orientation.w = wp[6];
	return true;
}
void transCB(GoalHandle gh)
{

}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "TestActionClient");

	ActionClient ac_("follow_waypoints");

	ROS_INFO("Waiting for ActionServer");
	ac_.waitForActionServerToStart(ros::Duration(1, 0));
	ROS_INFO("ActionServer started, sending goal");

	FollowWaypointsGoal goal;
	double wp[7] = {1,1,1,0,0,0,1};
	fillGoalMsg(&goal, wp, 1, -1);

	GoalHandle gh = ac_.sendGoal(goal, boost::bind(transCB,_1)); //TransitionCB -> done, active, feedback

	ROS_INFO("wait 2s");
	ros::Duration(2).sleep();
	ROS_INFO("cancel goal");
	gh.cancel();


	ros::spin();
	return 0;
}
