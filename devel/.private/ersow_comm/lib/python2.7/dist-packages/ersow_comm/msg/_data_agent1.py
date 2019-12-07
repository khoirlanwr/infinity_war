# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ersow_comm/data_agent1.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class data_agent1(genpy.Message):
  _md5sum = "022256aa1a3bdbeeb5a7d45acc3c370c"
  _type = "ersow_comm/data_agent1"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 agent1_value

uint16 agent1_posx
uint16 agent1_posy
uint16 agent1_post

uint16 agent1_ballx
uint16 agent1_bally
uint16 agent1_ball_detected

uint8 agent1_pass
uint8 agent1_condition"""
  __slots__ = ['agent1_value','agent1_posx','agent1_posy','agent1_post','agent1_ballx','agent1_bally','agent1_ball_detected','agent1_pass','agent1_condition']
  _slot_types = ['int32','uint16','uint16','uint16','uint16','uint16','uint16','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       agent1_value,agent1_posx,agent1_posy,agent1_post,agent1_ballx,agent1_bally,agent1_ball_detected,agent1_pass,agent1_condition

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(data_agent1, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.agent1_value is None:
        self.agent1_value = 0
      if self.agent1_posx is None:
        self.agent1_posx = 0
      if self.agent1_posy is None:
        self.agent1_posy = 0
      if self.agent1_post is None:
        self.agent1_post = 0
      if self.agent1_ballx is None:
        self.agent1_ballx = 0
      if self.agent1_bally is None:
        self.agent1_bally = 0
      if self.agent1_ball_detected is None:
        self.agent1_ball_detected = 0
      if self.agent1_pass is None:
        self.agent1_pass = 0
      if self.agent1_condition is None:
        self.agent1_condition = 0
    else:
      self.agent1_value = 0
      self.agent1_posx = 0
      self.agent1_posy = 0
      self.agent1_post = 0
      self.agent1_ballx = 0
      self.agent1_bally = 0
      self.agent1_ball_detected = 0
      self.agent1_pass = 0
      self.agent1_condition = 0

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
      buff.write(_get_struct_i6H2B().pack(_x.agent1_value, _x.agent1_posx, _x.agent1_posy, _x.agent1_post, _x.agent1_ballx, _x.agent1_bally, _x.agent1_ball_detected, _x.agent1_pass, _x.agent1_condition))
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
      end += 18
      (_x.agent1_value, _x.agent1_posx, _x.agent1_posy, _x.agent1_post, _x.agent1_ballx, _x.agent1_bally, _x.agent1_ball_detected, _x.agent1_pass, _x.agent1_condition,) = _get_struct_i6H2B().unpack(str[start:end])
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
      buff.write(_get_struct_i6H2B().pack(_x.agent1_value, _x.agent1_posx, _x.agent1_posy, _x.agent1_post, _x.agent1_ballx, _x.agent1_bally, _x.agent1_ball_detected, _x.agent1_pass, _x.agent1_condition))
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
      end += 18
      (_x.agent1_value, _x.agent1_posx, _x.agent1_posy, _x.agent1_post, _x.agent1_ballx, _x.agent1_bally, _x.agent1_ball_detected, _x.agent1_pass, _x.agent1_condition,) = _get_struct_i6H2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i6H2B = None
def _get_struct_i6H2B():
    global _struct_i6H2B
    if _struct_i6H2B is None:
        _struct_i6H2B = struct.Struct("<i6H2B")
    return _struct_i6H2B
