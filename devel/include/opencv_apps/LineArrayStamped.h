// Generated by gencpp from file opencv_apps/LineArrayStamped.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_LINEARRAYSTAMPED_H
#define OPENCV_APPS_MESSAGE_LINEARRAYSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <opencv_apps/Line.h>

namespace opencv_apps
{
template <class ContainerAllocator>
struct LineArrayStamped_
{
  typedef LineArrayStamped_<ContainerAllocator> Type;

  LineArrayStamped_()
    : header()
    , lines()  {
    }
  LineArrayStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lines(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::opencv_apps::Line_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::opencv_apps::Line_<ContainerAllocator> >::other >  _lines_type;
  _lines_type lines;




  typedef boost::shared_ptr< ::opencv_apps::LineArrayStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::LineArrayStamped_<ContainerAllocator> const> ConstPtr;

}; // struct LineArrayStamped_

typedef ::opencv_apps::LineArrayStamped_<std::allocator<void> > LineArrayStamped;

typedef boost::shared_ptr< ::opencv_apps::LineArrayStamped > LineArrayStampedPtr;
typedef boost::shared_ptr< ::opencv_apps::LineArrayStamped const> LineArrayStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::LineArrayStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opencv_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/home/dlab/ros_catkin_ws/src/std_msgs/msg'], 'opencv_apps': ['/home/dlab/ros_ws/src/opencv_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::LineArrayStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::LineArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::LineArrayStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ad5d104256b4f6774479453d1118f74";
  }

  static const char* value(const ::opencv_apps::LineArrayStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ad5d104256b4f67ULL;
  static const uint64_t static_value2 = 0x74479453d1118f74ULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/LineArrayStamped";
  }

  static const char* value(const ::opencv_apps::LineArrayStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Line[] lines\n\
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
MSG: opencv_apps/Line\n\
Point2D pt1\n\
Point2D pt2\n\
\n\
\n\
================================================================================\n\
MSG: opencv_apps/Point2D\n\
float64 x\n\
float64 y\n\
\n\
";
  }

  static const char* value(const ::opencv_apps::LineArrayStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lines);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LineArrayStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::LineArrayStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::LineArrayStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lines[]" << std::endl;
    for (size_t i = 0; i < v.lines.size(); ++i)
    {
      s << indent << "  lines[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::opencv_apps::Line_<ContainerAllocator> >::stream(s, indent + "    ", v.lines[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_LINEARRAYSTAMPED_H
