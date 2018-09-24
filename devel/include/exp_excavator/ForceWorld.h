// Generated by gencpp from file exp_excavator/ForceWorld.msg
// DO NOT EDIT!


#ifndef EXP_EXCAVATOR_MESSAGE_FORCEWORLD_H
#define EXP_EXCAVATOR_MESSAGE_FORCEWORLD_H


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
struct ForceWorld_
{
  typedef ForceWorld_<ContainerAllocator> Type;

  ForceWorld_()
    : header()
    , Fx(0.0)
    , Fz(0.0)
    , My(0.0)
    , theta(0.0)  {
    }
  ForceWorld_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Fx(0.0)
    , Fz(0.0)
    , My(0.0)
    , theta(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _Fx_type;
  _Fx_type Fx;

   typedef double _Fz_type;
  _Fz_type Fz;

   typedef double _My_type;
  _My_type My;

   typedef double _theta_type;
  _theta_type theta;




  typedef boost::shared_ptr< ::exp_excavator::ForceWorld_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exp_excavator::ForceWorld_<ContainerAllocator> const> ConstPtr;

}; // struct ForceWorld_

typedef ::exp_excavator::ForceWorld_<std::allocator<void> > ForceWorld;

typedef boost::shared_ptr< ::exp_excavator::ForceWorld > ForceWorldPtr;
typedef boost::shared_ptr< ::exp_excavator::ForceWorld const> ForceWorldConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exp_excavator::ForceWorld_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exp_excavator::ForceWorld_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::exp_excavator::ForceWorld_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exp_excavator::ForceWorld_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::ForceWorld_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::ForceWorld_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::ForceWorld_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::ForceWorld_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exp_excavator::ForceWorld_<ContainerAllocator> >
{
  static const char* value()
  {
    return "336ed59acb7b65e8556d1434d1680e05";
  }

  static const char* value(const ::exp_excavator::ForceWorld_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x336ed59acb7b65e8ULL;
  static const uint64_t static_value2 = 0x556d1434d1680e05ULL;
};

template<class ContainerAllocator>
struct DataType< ::exp_excavator::ForceWorld_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exp_excavator/ForceWorld";
  }

  static const char* value(const ::exp_excavator::ForceWorld_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exp_excavator::ForceWorld_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
float64 Fx\n\
float64 Fz\n\
float64 My\n\
float64 theta\n\
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

  static const char* value(const ::exp_excavator::ForceWorld_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exp_excavator::ForceWorld_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Fx);
      stream.next(m.Fz);
      stream.next(m.My);
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ForceWorld_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exp_excavator::ForceWorld_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exp_excavator::ForceWorld_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Fx: ";
    Printer<double>::stream(s, indent + "  ", v.Fx);
    s << indent << "Fz: ";
    Printer<double>::stream(s, indent + "  ", v.Fz);
    s << indent << "My: ";
    Printer<double>::stream(s, indent + "  ", v.My);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXP_EXCAVATOR_MESSAGE_FORCEWORLD_H
