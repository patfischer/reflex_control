// Generated by gencpp from file reflex_control/JointTorqueComparison.msg
// DO NOT EDIT!


#ifndef REFLEX_CONTROL_MESSAGE_JOINTTORQUECOMPARISON_H
#define REFLEX_CONTROL_MESSAGE_JOINTTORQUECOMPARISON_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace reflex_control
{
template <class ContainerAllocator>
struct JointTorqueComparison_
{
  typedef JointTorqueComparison_<ContainerAllocator> Type;

  JointTorqueComparison_()
    : tau_error()
    , tau_commanded()
    , tau_measured()
    , root_mean_square_error(0.0)  {
      tau_error.assign(0.0);

      tau_commanded.assign(0.0);

      tau_measured.assign(0.0);
  }
  JointTorqueComparison_(const ContainerAllocator& _alloc)
    : tau_error()
    , tau_commanded()
    , tau_measured()
    , root_mean_square_error(0.0)  {
  (void)_alloc;
      tau_error.assign(0.0);

      tau_commanded.assign(0.0);

      tau_measured.assign(0.0);
  }



   typedef boost::array<double, 7>  _tau_error_type;
  _tau_error_type tau_error;

   typedef boost::array<double, 7>  _tau_commanded_type;
  _tau_commanded_type tau_commanded;

   typedef boost::array<double, 7>  _tau_measured_type;
  _tau_measured_type tau_measured;

   typedef double _root_mean_square_error_type;
  _root_mean_square_error_type root_mean_square_error;





  typedef boost::shared_ptr< ::reflex_control::JointTorqueComparison_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::reflex_control::JointTorqueComparison_<ContainerAllocator> const> ConstPtr;

}; // struct JointTorqueComparison_

typedef ::reflex_control::JointTorqueComparison_<std::allocator<void> > JointTorqueComparison;

typedef boost::shared_ptr< ::reflex_control::JointTorqueComparison > JointTorqueComparisonPtr;
typedef boost::shared_ptr< ::reflex_control::JointTorqueComparison const> JointTorqueComparisonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::reflex_control::JointTorqueComparison_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::reflex_control::JointTorqueComparison_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reflex_control::JointTorqueComparison_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reflex_control::JointTorqueComparison_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c09db90263c92a2e4e4d736f67bc033";
  }

  static const char* value(const ::reflex_control::JointTorqueComparison_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c09db90263c92a2ULL;
  static const uint64_t static_value2 = 0xe4e4d736f67bc033ULL;
};

template<class ContainerAllocator>
struct DataType< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
{
  static const char* value()
  {
    return "reflex_control/JointTorqueComparison";
  }

  static const char* value(const ::reflex_control::JointTorqueComparison_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[7] tau_error\n\
float64[7] tau_commanded\n\
float64[7] tau_measured\n\
float64 root_mean_square_error\n\
";
  }

  static const char* value(const ::reflex_control::JointTorqueComparison_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tau_error);
      stream.next(m.tau_commanded);
      stream.next(m.tau_measured);
      stream.next(m.root_mean_square_error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointTorqueComparison_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::reflex_control::JointTorqueComparison_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::reflex_control::JointTorqueComparison_<ContainerAllocator>& v)
  {
    s << indent << "tau_error[]" << std::endl;
    for (size_t i = 0; i < v.tau_error.size(); ++i)
    {
      s << indent << "  tau_error[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.tau_error[i]);
    }
    s << indent << "tau_commanded[]" << std::endl;
    for (size_t i = 0; i < v.tau_commanded.size(); ++i)
    {
      s << indent << "  tau_commanded[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.tau_commanded[i]);
    }
    s << indent << "tau_measured[]" << std::endl;
    for (size_t i = 0; i < v.tau_measured.size(); ++i)
    {
      s << indent << "  tau_measured[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.tau_measured[i]);
    }
    s << indent << "root_mean_square_error: ";
    Printer<double>::stream(s, indent + "  ", v.root_mean_square_error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REFLEX_CONTROL_MESSAGE_JOINTTORQUECOMPARISON_H
