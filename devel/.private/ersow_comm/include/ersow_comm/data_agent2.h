// Generated by gencpp from file ersow_comm/data_agent2.msg
// DO NOT EDIT!


#ifndef ERSOW_COMM_MESSAGE_DATA_AGENT2_H
#define ERSOW_COMM_MESSAGE_DATA_AGENT2_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ersow_comm
{
template <class ContainerAllocator>
struct data_agent2_
{
  typedef data_agent2_<ContainerAllocator> Type;

  data_agent2_()
    : agent2_value(0)
    , agent2_posx(0)
    , agent2_posy(0)
    , agent2_post(0)
    , agent2_ballx(0)
    , agent2_bally(0)
    , agent2_ball_detected(0)
    , agent2_pass(0)
    , agent2_condition(0)  {
    }
  data_agent2_(const ContainerAllocator& _alloc)
    : agent2_value(0)
    , agent2_posx(0)
    , agent2_posy(0)
    , agent2_post(0)
    , agent2_ballx(0)
    , agent2_bally(0)
    , agent2_ball_detected(0)
    , agent2_pass(0)
    , agent2_condition(0)  {
  (void)_alloc;
    }



   typedef int32_t _agent2_value_type;
  _agent2_value_type agent2_value;

   typedef uint16_t _agent2_posx_type;
  _agent2_posx_type agent2_posx;

   typedef uint16_t _agent2_posy_type;
  _agent2_posy_type agent2_posy;

   typedef uint16_t _agent2_post_type;
  _agent2_post_type agent2_post;

   typedef uint16_t _agent2_ballx_type;
  _agent2_ballx_type agent2_ballx;

   typedef uint16_t _agent2_bally_type;
  _agent2_bally_type agent2_bally;

   typedef uint16_t _agent2_ball_detected_type;
  _agent2_ball_detected_type agent2_ball_detected;

   typedef uint8_t _agent2_pass_type;
  _agent2_pass_type agent2_pass;

   typedef uint8_t _agent2_condition_type;
  _agent2_condition_type agent2_condition;





  typedef boost::shared_ptr< ::ersow_comm::data_agent2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ersow_comm::data_agent2_<ContainerAllocator> const> ConstPtr;

}; // struct data_agent2_

typedef ::ersow_comm::data_agent2_<std::allocator<void> > data_agent2;

typedef boost::shared_ptr< ::ersow_comm::data_agent2 > data_agent2Ptr;
typedef boost::shared_ptr< ::ersow_comm::data_agent2 const> data_agent2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ersow_comm::data_agent2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ersow_comm::data_agent2_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ersow_comm

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'ersow_comm': ['/home/khoirlnwar/COMM_workspace/src/ersow_comm/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ersow_comm::data_agent2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ersow_comm::data_agent2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ersow_comm::data_agent2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ersow_comm::data_agent2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ersow_comm::data_agent2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ersow_comm::data_agent2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ersow_comm::data_agent2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75da7416470ab6003bdb7cff78be02a4";
  }

  static const char* value(const ::ersow_comm::data_agent2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75da7416470ab600ULL;
  static const uint64_t static_value2 = 0x3bdb7cff78be02a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::ersow_comm::data_agent2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ersow_comm/data_agent2";
  }

  static const char* value(const ::ersow_comm::data_agent2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ersow_comm::data_agent2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 agent2_value\n\
\n\
uint16 agent2_posx\n\
uint16 agent2_posy\n\
uint16 agent2_post\n\
\n\
uint16 agent2_ballx\n\
uint16 agent2_bally\n\
uint16 agent2_ball_detected\n\
\n\
uint8 agent2_pass\n\
uint8 agent2_condition\n\
";
  }

  static const char* value(const ::ersow_comm::data_agent2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ersow_comm::data_agent2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.agent2_value);
      stream.next(m.agent2_posx);
      stream.next(m.agent2_posy);
      stream.next(m.agent2_post);
      stream.next(m.agent2_ballx);
      stream.next(m.agent2_bally);
      stream.next(m.agent2_ball_detected);
      stream.next(m.agent2_pass);
      stream.next(m.agent2_condition);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct data_agent2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ersow_comm::data_agent2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ersow_comm::data_agent2_<ContainerAllocator>& v)
  {
    s << indent << "agent2_value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.agent2_value);
    s << indent << "agent2_posx: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.agent2_posx);
    s << indent << "agent2_posy: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.agent2_posy);
    s << indent << "agent2_post: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.agent2_post);
    s << indent << "agent2_ballx: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.agent2_ballx);
    s << indent << "agent2_bally: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.agent2_bally);
    s << indent << "agent2_ball_detected: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.agent2_ball_detected);
    s << indent << "agent2_pass: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.agent2_pass);
    s << indent << "agent2_condition: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.agent2_condition);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ERSOW_COMM_MESSAGE_DATA_AGENT2_H
