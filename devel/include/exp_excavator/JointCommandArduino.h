// Generated by gencpp from file exp_excavator/JointCommandArduino.msg
// DO NOT EDIT!


#ifndef EXP_EXCAVATOR_MESSAGE_JOINTCOMMANDARDUINO_H
#define EXP_EXCAVATOR_MESSAGE_JOINTCOMMANDARDUINO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace exp_excavator
{
template <class ContainerAllocator>
struct JointCommandArduino_
{
  typedef JointCommandArduino_<ContainerAllocator> Type;

  JointCommandArduino_()
    : header()
    , boomV(0.0)
    , armV(0.0)
    , boomP(0.0)
    , armP(0.0)
    , BoomMode(0)
    , ArmMode(0)  {
    }
  JointCommandArduino_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , boomV(0.0)
    , armV(0.0)
    , boomP(0.0)
    , armP(0.0)
    , BoomMode(0)
    , ArmMode(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _boomV_type;
  _boomV_type boomV;

   typedef float _armV_type;
  _armV_type armV;

   typedef float _boomP_type;
  _boomP_type boomP;

   typedef float _armP_type;
  _armP_type armP;

   typedef int8_t _BoomMode_type;
  _BoomMode_type BoomMode;

   typedef int8_t _ArmMode_type;
  _ArmMode_type ArmMode;




  typedef boost::shared_ptr< ::exp_excavator::JointCommandArduino_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exp_excavator::JointCommandArduino_<ContainerAllocator> const> ConstPtr;

}; // struct JointCommandArduino_

typedef ::exp_excavator::JointCommandArduino_<std::allocator<void> > JointCommandArduino;

typedef boost::shared_ptr< ::exp_excavator::JointCommandArduino > JointCommandArduinoPtr;
typedef boost::shared_ptr< ::exp_excavator::JointCommandArduino const> JointCommandArduinoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exp_excavator::JointCommandArduino_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exp_excavator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'exp_excavator': ['/home/dlab/ros_ws/src/exp_excavator/msg'], 'std_msgs': ['/home/dlab/ros_catkin_ws/src/std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exp_excavator::JointCommandArduino_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::JointCommandArduino_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::JointCommandArduino_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a8c41177e77782c84174d490536bcb81";
  }

  static const char* value(const ::exp_excavator::JointCommandArduino_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa8c41177e77782c8ULL;
  static const uint64_t static_value2 = 0x4174d490536bcb81ULL;
};

template<class ContainerAllocator>
struct DataType< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exp_excavator/JointCommandArduino";
  }

  static const char* value(const ::exp_excavator::JointCommandArduino_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
float32 boomV\n\
float32 armV\n\
float32 boomP\n\
float32 armP\n\
int8 BoomMode\n\
int8 ArmMode\n\
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
";
  }

  static const char* value(const ::exp_excavator::JointCommandArduino_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.boomV);
      stream.next(m.armV);
      stream.next(m.boomP);
      stream.next(m.armP);
      stream.next(m.BoomMode);
      stream.next(m.ArmMode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointCommandArduino_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exp_excavator::JointCommandArduino_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exp_excavator::JointCommandArduino_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "boomV: ";
    Printer<float>::stream(s, indent + "  ", v.boomV);
    s << indent << "armV: ";
    Printer<float>::stream(s, indent + "  ", v.armV);
    s << indent << "boomP: ";
    Printer<float>::stream(s, indent + "  ", v.boomP);
    s << indent << "armP: ";
    Printer<float>::stream(s, indent + "  ", v.armP);
    s << indent << "BoomMode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.BoomMode);
    s << indent << "ArmMode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ArmMode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXP_EXCAVATOR_MESSAGE_JOINTCOMMANDARDUINO_H