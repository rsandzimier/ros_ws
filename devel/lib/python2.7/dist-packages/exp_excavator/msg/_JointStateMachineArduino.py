# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from exp_excavator/JointStateMachineArduino.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class JointStateMachineArduino(genpy.Message):
  _md5sum = "e2c69b24e60d81685d15c8dc83d8091c"
  _type = "exp_excavator/JointStateMachineArduino"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 boomP
float32 armP

float32 boomV
float32 armV

float32 boomI
float32 armI

int8 boomMode
int8 armMode
"""
  __slots__ = ['boomP','armP','boomV','armV','boomI','armI','boomMode','armMode']
  _slot_types = ['float32','float32','float32','float32','float32','float32','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       boomP,armP,boomV,armV,boomI,armI,boomMode,armMode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(JointStateMachineArduino, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.boomP is None:
        self.boomP = 0.
      if self.armP is None:
        self.armP = 0.
      if self.boomV is None:
        self.boomV = 0.
      if self.armV is None:
        self.armV = 0.
      if self.boomI is None:
        self.boomI = 0.
      if self.armI is None:
        self.armI = 0.
      if self.boomMode is None:
        self.boomMode = 0
      if self.armMode is None:
        self.armMode = 0
    else:
      self.boomP = 0.
      self.armP = 0.
      self.boomV = 0.
      self.armV = 0.
      self.boomI = 0.
      self.armI = 0.
      self.boomMode = 0
      self.armMode = 0

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
      buff.write(_struct_6f2b.pack(_x.boomP, _x.armP, _x.boomV, _x.armV, _x.boomI, _x.armI, _x.boomMode, _x.armMode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.boomP, _x.armP, _x.boomV, _x.armV, _x.boomI, _x.armI, _x.boomMode, _x.armMode,) = _struct_6f2b.unpack(str[start:end])
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
      buff.write(_struct_6f2b.pack(_x.boomP, _x.armP, _x.boomV, _x.armV, _x.boomI, _x.armI, _x.boomMode, _x.armMode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.boomP, _x.armP, _x.boomV, _x.armV, _x.boomI, _x.armI, _x.boomMode, _x.armMode,) = _struct_6f2b.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6f2b = struct.Struct("<6f2b")