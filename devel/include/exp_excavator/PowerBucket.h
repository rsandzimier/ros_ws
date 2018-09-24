// Generated by gencpp from file exp_excavator/PowerBucket.msg
// DO NOT EDIT!


#ifndef EXP_EXCAVATOR_MESSAGE_POWERBUCKET_H
#define EXP_EXCAVATOR_MESSAGE_POWERBUCKET_H


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
struct PowerBucket_
{
  typedef PowerBucket_<ContainerAllocator> Type;

  PowerBucket_()
    : header()
    , powerTotal(0.0)
    , powerX(0.0)
    , powerZ(0.0)
    , powerPhi(0.0)  {
    }
  PowerBucket_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , powerTotal(0.0)
    , powerX(0.0)
    , powerZ(0.0)
    , powerPhi(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _powerTotal_type;
  _powerTotal_type powerTotal;

   typedef double _powerX_type;
  _powerX_type powerX;

   typedef double _powerZ_type;
  _powerZ_type powerZ;

   typedef double _powerPhi_type;
  _powerPhi_type powerPhi;




  typedef boost::shared_ptr< ::exp_excavator::PowerBucket_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exp_excavator::PowerBucket_<ContainerAllocator> const> ConstPtr;

}; // struct PowerBucket_

typedef ::exp_excavator::PowerBucket_<std::allocator<void> > PowerBucket;

typedef boost::shared_ptr< ::exp_excavator::PowerBucket > PowerBucketPtr;
typedef boost::shared_ptr< ::exp_excavator::PowerBucket const> PowerBucketConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exp_excavator::PowerBucket_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exp_excavator::PowerBucket_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::exp_excavator::PowerBucket_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exp_excavator::PowerBucket_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::PowerBucket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::PowerBucket_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::PowerBucket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::PowerBucket_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exp_excavator::PowerBucket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84172ec58d9e5c45ba7540e94032220c";
  }

  static const char* value(const ::exp_excavator::PowerBucket_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84172ec58d9e5c45ULL;
  static const uint64_t static_value2 = 0xba7540e94032220cULL;
};

template<class ContainerAllocator>
struct DataType< ::exp_excavator::PowerBucket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exp_excavator/PowerBucket";
  }

  static const char* value(const ::exp_excavator::PowerBucket_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exp_excavator::PowerBucket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
float64 powerTotal\n\
float64 powerX\n\
float64 powerZ\n\
float64 powerPhi\n\
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

  static const char* value(const ::exp_excavator::PowerBucket_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exp_excavator::PowerBucket_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.powerTotal);
      stream.next(m.powerX);
      stream.next(m.powerZ);
      stream.next(m.powerPhi);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PowerBucket_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exp_excavator::PowerBucket_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exp_excavator::PowerBucket_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "powerTotal: ";
    Printer<double>::stream(s, indent + "  ", v.powerTotal);
    s << indent << "powerX: ";
    Printer<double>::stream(s, indent + "  ", v.powerX);
    s << indent << "powerZ: ";
    Printer<double>::stream(s, indent + "  ", v.powerZ);
    s << indent << "powerPhi: ";
    Printer<double>::stream(s, indent + "  ", v.powerPhi);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXP_EXCAVATOR_MESSAGE_POWERBUCKET_H