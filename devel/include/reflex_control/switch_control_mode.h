// Generated by gencpp from file reflex_control/switch_control_mode.msg
// DO NOT EDIT!


#ifndef REFLEX_CONTROL_MESSAGE_SWITCH_CONTROL_MODE_H
#define REFLEX_CONTROL_MESSAGE_SWITCH_CONTROL_MODE_H

#include <ros/service_traits.h>


#include <reflex_control/switch_control_modeRequest.h>
#include <reflex_control/switch_control_modeResponse.h>


namespace reflex_control
{

struct switch_control_mode
{

typedef switch_control_modeRequest Request;
typedef switch_control_modeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct switch_control_mode
} // namespace reflex_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::reflex_control::switch_control_mode > {
  static const char* value()
  {
    return "40f33faf6a072a0a32d8bb11873693e7";
  }

  static const char* value(const ::reflex_control::switch_control_mode&) { return value(); }
};

template<>
struct DataType< ::reflex_control::switch_control_mode > {
  static const char* value()
  {
    return "reflex_control/switch_control_mode";
  }

  static const char* value(const ::reflex_control::switch_control_mode&) { return value(); }
};


// service_traits::MD5Sum< ::reflex_control::switch_control_modeRequest> should match 
// service_traits::MD5Sum< ::reflex_control::switch_control_mode > 
template<>
struct MD5Sum< ::reflex_control::switch_control_modeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::reflex_control::switch_control_mode >::value();
  }
  static const char* value(const ::reflex_control::switch_control_modeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::reflex_control::switch_control_modeRequest> should match 
// service_traits::DataType< ::reflex_control::switch_control_mode > 
template<>
struct DataType< ::reflex_control::switch_control_modeRequest>
{
  static const char* value()
  {
    return DataType< ::reflex_control::switch_control_mode >::value();
  }
  static const char* value(const ::reflex_control::switch_control_modeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::reflex_control::switch_control_modeResponse> should match 
// service_traits::MD5Sum< ::reflex_control::switch_control_mode > 
template<>
struct MD5Sum< ::reflex_control::switch_control_modeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::reflex_control::switch_control_mode >::value();
  }
  static const char* value(const ::reflex_control::switch_control_modeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::reflex_control::switch_control_modeResponse> should match 
// service_traits::DataType< ::reflex_control::switch_control_mode > 
template<>
struct DataType< ::reflex_control::switch_control_modeResponse>
{
  static const char* value()
  {
    return DataType< ::reflex_control::switch_control_mode >::value();
  }
  static const char* value(const ::reflex_control::switch_control_modeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // REFLEX_CONTROL_MESSAGE_SWITCH_CONTROL_MODE_H