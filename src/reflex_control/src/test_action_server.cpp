#include <string>
#include <memory>

#include <boost/shared_ptr.hpp>
#include <boost/dynamic_bitset.hpp>

#include <ros/ros.h>
#include <ros/node_handle.h>
#include <ros/time.h>

#include <realtime_tools/realtime_box.h>
#include <realtime_tools/realtime_buffer.h>
#include <realtime_tools/realtime_publisher.h>

#include <realtime_tools/realtime_server_goal_handle.h>

#include <Eigen/Dense>

#include <actionlib/server/action_server.h>

#include <reflex_control/FollowWaypointsAction.h>
#include <reflex_control/cartesian_waypoint.h>
#include <geometry_msgs/Pose.h>

class TestActionServer
{
protected:

	typedef actionlib::ActionServer<reflex_control::FollowWaypointsAction> ActionServer;
	typedef std::shared_ptr<ActionServer> ActionServerPtr;
  	typedef ActionServer::GoalHandle GoalHandle;
  	typedef realtime_tools::RealtimeServerGoalHandle<reflex_control::FollowWaypointsAction> RealtimeGoalHandle;
	typedef boost::shared_ptr<RealtimeGoalHandle> RealtimeGoalHandlePtr;
  	typedef std::shared_ptr<GoalHandle> GoalHandlePtr;

	ros::NodeHandle nh_;
	
	ActionServerPtr as_;
	// reflex_control::FollowWaypointsFeedback feedback_;
	// reflex_control::FollowWaypointsResult result_;
	RealtimeGoalHandlePtr active_goal_;

	Eigen::Vector3d cptc_position_desired;
	Eigen::Quaterniond cptc_orientation_desired; 
	Eigen::Vector3d cptc_position_waypoint;
	Eigen::Quaterniond cptc_orientation_waypoint; 
	Eigen::Vector3d cptc_position_next;
	Eigen::Quaterniond cptc_orientation_next; 
	double vel;
	double tol_trans;
	double tol_rot;
	ros::Duration dur;
	uint64_t index;

	bool okay;
	
public:
	TestActionServer(void){};
	~TestActionServer(void){};

	void init_() 
	{
		as_.reset(new ActionServer(nh_, "follow_waypoints",
			boost::bind(&TestActionServer::goalCB, this, _1),
			boost::bind(&TestActionServer::cancelCB, this, _1),
			false));
		as_->start();
		ROS_INFO("ActionServer initiated");
	}

	void goalCB(GoalHandle gh)
	{
		// if (!this->isRunning())
		// {
		//	ROS_INFO("Controller not running. Can't accept new goal.")
		// 	reflex_control::FollowWaypointsResult result;
		// 	result.error_code = reflex_control::FollowWaypointsResult::INVALID_GOAL;
		// 	gh.setRejected(result);
		// 	return;
		// }

		if (gh.getGoal()->waypoints.empty())
		{
			ROS_INFO("Empty goal.");
			reflex_control::FollowWaypointsResult result;
			result.error_code = reflex_control::FollowWaypointsResult::INVALID_GOAL;
			gh.setRejected(result);
			return;
		}

		RealtimeGoalHandlePtr rt_goal(new RealtimeGoalHandle(gh));
		// const bool waypoint_ok = setNextWaypoint(rt_goal, 0);

		if(true) {
			// Accept new goal
			ROS_INFO("New goal incoming.");
			preemptActiveGoal();
			active_goal_ = rt_goal;
			ROS_INFO("New goal accepted.");
		} else {
			gh.setRejected();
		}

		index = 0;
		okay = true;

		runLoop();
		
	}
	void cancelCB(GoalHandle gh)
	{
		RealtimeGoalHandlePtr current_active_goal(active_goal_);
		ROS_INFO("Cancel goal requested.");

		if (current_active_goal && current_active_goal->gh_ == gh)
		{
			preemptActiveGoal();
			ROS_INFO("Goal canceled.");
		} else {
			ROS_INFO("Didn't cancel because of wrong goal handle.");
		}
	}

	// ActionServer helper functions
	void preemptActiveGoal()
	{
		RealtimeGoalHandlePtr current_active_goal(active_goal_);
		if(current_active_goal)
		{
			active_goal_.reset();
			current_active_goal->gh_.setCanceled();
			ROS_INFO("Preempted active goal.");
		} else {
			ROS_INFO("No active goal to cancel.");			
		}
	}

	bool setNextWaypoint(RealtimeGoalHandlePtr ghPtr, uint64_t index)
	{
		ROS_INFO("Next Waypoint check and set");
		// geometry_msgs::Pose wp_ = ghPtr->gh_.getGoal()->waypoints[index];
		
		// next_waypoint_position << wp_->position.x, wp_->position.y, wp_->position.z;

		return true;
	}



	bool getWaypoint(int index) {
		RealtimeGoalHandlePtr current_active_goal(active_goal_);
		if(current_active_goal) {	
			if (current_active_goal->gh_.getGoal()->waypoints.size() <= index) {
				ROS_INFO("Reached end of waypoints list.");
				preemptActiveGoal();
				okay = false;
				return false;
			}

			reflex_control::cartesian_waypoint wp_msg;
			wp_msg = current_active_goal->gh_.getGoal()->waypoints[index];
			cptc_position_waypoint << wp_msg.wp.position.x, wp_msg.wp.position.y, wp_msg.wp.position.z;
			cptc_orientation_waypoint.coeffs() << wp_msg.wp.orientation.x, wp_msg.wp.orientation.y, wp_msg.wp.orientation.z, wp_msg.wp.orientation.w;
			ROS_INFO("next waypoint = (%f, %f, %f)", cptc_position_waypoint[0], cptc_position_waypoint[1], cptc_position_waypoint[2]);

		} else {
			ROS_INFO("No active goal, stop trajectory controller");
			okay = false;
			return false;
		}

	}

	void runLoop() {
		RealtimeGoalHandlePtr current_active_goal(active_goal_);
		while (okay) {
			ROS_INFO("bla");
			getWaypoint(index);
			index++;
		}
		ROS_INFO("end");
	}
};

int main(int argc, char** argv)
{
	ros::init(argc, argv, "TestActionNode");

	TestActionServer test_as;
	test_as.init_();

	ros::spin();

	return 0;
}