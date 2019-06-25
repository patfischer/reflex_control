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

bool fillGoalMsg(FollowWaypointsGoal* goalPtr) {
	goalPtr->waypoints.resize(3);
	goalPtr->waypoints[0].wp.position.x = 1;
	goalPtr->waypoints[0].wp.position.y = 1;
	goalPtr->waypoints[0].wp.position.z = 1;
	goalPtr->waypoints[0].wp.orientation.x = 0;
	goalPtr->waypoints[0].wp.orientation.y = 0;
	goalPtr->waypoints[0].wp.orientation.z = 0;
	goalPtr->waypoints[0].wp.orientation.w = 1;
	goalPtr->waypoints[0].vel = 0.3;
	goalPtr->waypoints[0].tol_trans = 0.1;

	goalPtr->waypoints[1].wp.position.x = 2;
	goalPtr->waypoints[1].wp.position.y = 2;
	goalPtr->waypoints[1].wp.position.z = 2;
	goalPtr->waypoints[1].wp.orientation.x = 0;
	goalPtr->waypoints[1].wp.orientation.y = 0;
	goalPtr->waypoints[1].wp.orientation.z = 0;
	goalPtr->waypoints[1].wp.orientation.w = 1;
	goalPtr->waypoints[1].vel = 0.3;
	goalPtr->waypoints[1].tol_trans = 0.1;


	goalPtr->waypoints[2].wp.position.x = 3;
	goalPtr->waypoints[2].wp.position.y = 3;
	goalPtr->waypoints[2].wp.position.z = 3;
	goalPtr->waypoints[2].wp.orientation.x = 0;
	goalPtr->waypoints[2].wp.orientation.y = 0;
	goalPtr->waypoints[2].wp.orientation.z = 0;
	goalPtr->waypoints[2].wp.orientation.w = 1;
	goalPtr->waypoints[2].vel = 0.3;
	goalPtr->waypoints[2].tol_trans = 0.1;

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
	fillGoalMsg(&goal);

	GoalHandle gh = ac_.sendGoal(goal, boost::bind(transCB,_1)); //TransitionCB -> done, active, feedback

	ROS_INFO("wait 2s");
	ros::Duration(2).sleep();
	ROS_INFO("cancel goal");
	gh.cancel();


	ros::spin();
	return 0;
}
