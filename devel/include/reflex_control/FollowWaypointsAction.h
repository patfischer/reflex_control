// Generated by gencpp from file reflex_control/FollowWaypointsAction.msg
// DO NOT EDIT!


#ifndef REFLEX_CONTROL_MESSAGE_FOLLOWWAYPOINTSACTION_H
#define REFLEX_CONTROL_MESSAGE_FOLLOWWAYPOINTSACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <reflex_control/FollowWaypointsActionGoal.h>
#include <reflex_control/FollowWaypointsActionResult.h>
#include <reflex_control/FollowWaypointsActionFeedback.h>

namespace reflex_control
{
template <class ContainerAllocator>
struct FollowWaypointsAction_
{
  typedef FollowWaypointsAction_<ContainerAllocator> Type;

  FollowWaypointsAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  FollowWaypointsAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::reflex_control::FollowWaypointsActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::reflex_control::FollowWaypointsActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::reflex_control::FollowWaypointsActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> const> ConstPtr;

}; // struct FollowWaypointsAction_

typedef ::reflex_control::FollowWaypointsAction_<std::allocator<void> > FollowWaypointsAction;

typedef boost::shared_ptr< ::reflex_control::FollowWaypointsAction > FollowWaypointsActionPtr;
typedef boost::shared_ptr< ::reflex_control::FollowWaypointsAction const> FollowWaypointsActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::reflex_control::FollowWaypointsAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace reflex_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'reflex_control': ['/home/fischer/reflex_control/src/reflex_control/msg', '/home/fischer/reflex_control/devel/share/reflex_control/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7cebd5ee9a899c5c4f548d1acdb7fd88";
  }

  static const char* value(const ::reflex_control::FollowWaypointsAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7cebd5ee9a899c5cULL;
  static const uint64_t static_value2 = 0x4f548d1acdb7fd88ULL;
};

template<class ContainerAllocator>
struct DataType< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "reflex_control/FollowWaypointsAction";
  }

  static const char* value(const ::reflex_control::FollowWaypointsAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
FollowWaypointsActionGoal action_goal\n\
FollowWaypointsActionResult action_result\n\
FollowWaypointsActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: reflex_control/FollowWaypointsActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
FollowWaypointsGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: reflex_control/FollowWaypointsGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
#either one velocity/time_stamps or same as waypoints\n\
\n\
cartesian_waypoint[] waypoints\n\
\n\
\n\
================================================================================\n\
MSG: reflex_control/cartesian_waypoint\n\
geometry_msgs/Pose wp\n\
float64 vel\n\
duration dur\n\
float64 tol_trans\n\
float64 tol_angle\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: reflex_control/FollowWaypointsActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
FollowWaypointsResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: reflex_control/FollowWaypointsResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#results definition\n\
\n\
#geometry_msgs/Pose final_pose\n\
\n\
int32 error_code\n\
int32 SUCCESSFUL = 0\n\
int32 PREEMPTED = -1\n\
int32 INVALID_GOAL = -2\n\
\n\
string error_string\n\
\n\
\n\
================================================================================\n\
MSG: reflex_control/FollowWaypointsActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
FollowWaypointsFeedback feedback\n\
\n\
================================================================================\n\
MSG: reflex_control/FollowWaypointsFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback definition\n\
geometry_msgs/Pose desired\n\
geometry_msgs/Pose actual\n\
geometry_msgs/Pose error\n\
float64 progress\n\
\n\
";
  }

  static const char* value(const ::reflex_control::FollowWaypointsAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowWaypointsAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::reflex_control::FollowWaypointsAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::reflex_control::FollowWaypointsAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::reflex_control::FollowWaypointsActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::reflex_control::FollowWaypointsActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::reflex_control::FollowWaypointsActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REFLEX_CONTROL_MESSAGE_FOLLOWWAYPOINTSACTION_H
