# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from exp_excavator/Jacobian.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Jacobian(genpy.Message):
  _md5sum = "d027c0fe0722f555e8df21a5df02ef47"
  _type = "exp_excavator/Jacobian"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
float64 dxdtboom
float64 dxdtarm
float64 dxdtbucket
float64 dzdtboom
float64 dzdtarm
float64 dzdtbucket
float64 dphdtboom
float64 dphdtarm
float64 dphdtbucket

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','dxdtboom','dxdtarm','dxdtbucket','dzdtboom','dzdtarm','dzdtbucket','dphdtboom','dphdtarm','dphdtbucket']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,dxdtboom,dxdtarm,dxdtbucket,dzdtboom,dzdtarm,dzdtbucket,dphdtboom,dphdtarm,dphdtbucket

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Jacobian, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.dxdtboom is None:
        self.dxdtboom = 0.
      if self.dxdtarm is None:
        self.dxdtarm = 0.
      if self.dxdtbucket is None:
        self.dxdtbucket = 0.
      if self.dzdtboom is None:
        self.dzdtboom = 0.
      if self.dzdtarm is None:
        self.dzdtarm = 0.
      if self.dzdtbucket is None:
        self.dzdtbucket = 0.
      if self.dphdtboom is None:
        self.dphdtboom = 0.
      if self.dphdtarm is None:
        self.dphdtarm = 0.
      if self.dphdtbucket is None:
        self.dphdtbucket = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.dxdtboom = 0.
      self.dxdtarm = 0.
      self.dxdtbucket = 0.
      self.dzdtboom = 0.
      self.dzdtarm = 0.
      self.dzdtbucket = 0.
      self.dphdtboom = 0.
      self.dphdtarm = 0.
      self.dphdtbucket = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_9d.pack(_x.dxdtboom, _x.dxdtarm, _x.dxdtbucket, _x.dzdtboom, _x.dzdtarm, _x.dzdtbucket, _x.dphdtboom, _x.dphdtarm, _x.dphdtbucket))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.dxdtboom, _x.dxdtarm, _x.dxdtbucket, _x.dzdtboom, _x.dzdtarm, _x.dzdtbucket, _x.dphdtboom, _x.dphdtarm, _x.dphdtbucket,) = _struct_9d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_9d.pack(_x.dxdtboom, _x.dxdtarm, _x.dxdtbucket, _x.dzdtboom, _x.dzdtarm, _x.dzdtbucket, _x.dphdtboom, _x.dphdtarm, _x.dphdtbucket))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.dxdtboom, _x.dxdtarm, _x.dxdtbucket, _x.dzdtboom, _x.dzdtarm, _x.dzdtbucket, _x.dphdtboom, _x.dphdtarm, _x.dphdtbucket,) = _struct_9d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_9d = struct.Struct("<9d")