// Generated by gencpp from file reflex_control/follow_waypointsFeedback.msg
// DO NOT EDIT!


#ifndef REFLEX_CONTROL_MESSAGE_FOLLOW_WAYPOINTSFEEDBACK_H
#define REFLEX_CONTROL_MESSAGE_FOLLOW_WAYPOINTSFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>

namespace reflex_control
{
template <class ContainerAllocator>
struct follow_waypointsFeedback_
{
  typedef follow_waypointsFeedback_<ContainerAllocator> Type;

  follow_waypointsFeedback_()
    : desired()
    , actual()
    , error()
    , progress(0.0)  {
    }
  follow_waypointsFeedback_(const ContainerAllocator& _alloc)
    : desired(_alloc)
    , actual(_alloc)
    , error(_alloc)
    , progress(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _desired_type;
  _desired_type desired;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _actual_type;
  _actual_type actual;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _error_type;
  _error_type error;

   typedef double _progress_type;
  _progress_type progress;





  typedef boost::shared_ptr< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct follow_waypointsFeedback_

typedef ::reflex_control::follow_waypointsFeedback_<std::allocator<void> > follow_waypointsFeedback;

typedef boost::shared_ptr< ::reflex_control::follow_waypointsFeedback > follow_waypointsFeedbackPtr;
typedef boost::shared_ptr< ::reflex_control::follow_waypointsFeedback const> follow_waypointsFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace reflex_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'reflex_control': ['/home/patrick/reflex_control/src/reflex_control/msg', '/home/patrick/reflex_control/devel/share/reflex_control/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0e2fc254189e46d3d827d900a29d7809";
  }

  static const char* value(const ::reflex_control::follow_waypointsFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0e2fc254189e46d3ULL;
  static const uint64_t static_value2 = 0xd827d900a29d7809ULL;
};

template<class ContainerAllocator>
struct DataType< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "reflex_control/follow_waypointsFeedback";
  }

  static const char* value(const ::reflex_control::follow_waypointsFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback definition\n\
geometry_msgs/Pose desired\n\
geometry_msgs/Pose actual\n\
geometry_msgs/Pose error\n\
float64 progress\n\
\n\
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
";
  }

  static const char* value(const ::reflex_control::follow_waypointsFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.desired);
      stream.next(m.actual);
      stream.next(m.error);
      stream.next(m.progress);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct follow_waypointsFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::reflex_control::follow_waypointsFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::reflex_control::follow_waypointsFeedback_<ContainerAllocator>& v)
  {
    s << indent << "desired: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.desired);
    s << indent << "actual: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.actual);
    s << indent << "error: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.error);
    s << indent << "progress: ";
    Printer<double>::stream(s, indent + "  ", v.progress);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REFLEX_CONTROL_MESSAGE_FOLLOW_WAYPOINTSFEEDBACK_H
