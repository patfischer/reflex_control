# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from reflex_control/follow_waypointsAction.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import actionlib_msgs.msg
import geometry_msgs.msg
import genpy
import reflex_control.msg
import std_msgs.msg

class follow_waypointsAction(genpy.Message):
  _md5sum = "c861657d2be878dea438133d74c24823"
  _type = "reflex_control/follow_waypointsAction"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

follow_waypointsActionGoal action_goal
follow_waypointsActionResult action_result
follow_waypointsActionFeedback action_feedback

================================================================================
MSG: reflex_control/follow_waypointsActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
follow_waypointsGoal goal

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

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: reflex_control/follow_waypointsGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
#either one velocity/time_stamps or same as waypoints

geometry_msgs/Pose[] waypoints
float64[] velocities
duration[] time_stamps


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: reflex_control/follow_waypointsActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
follow_waypointsResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: reflex_control/follow_waypointsResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#results definition

geometry_msgs/Pose final_pose
int32 error_code
int32 SUCCESSFUL = 0
int32 PREEMPTED = -1
int32 INVALID_GOAL = -2

string error_string


================================================================================
MSG: reflex_control/follow_waypointsActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
follow_waypointsFeedback feedback

================================================================================
MSG: reflex_control/follow_waypointsFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback definition
geometry_msgs/Pose desired
geometry_msgs/Pose actual
geometry_msgs/Pose error
float64 progress

"""
  __slots__ = ['action_goal','action_result','action_feedback']
  _slot_types = ['reflex_control/follow_waypointsActionGoal','reflex_control/follow_waypointsActionResult','reflex_control/follow_waypointsActionFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action_goal,action_result,action_feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(follow_waypointsAction, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.action_goal is None:
        self.action_goal = reflex_control.msg.follow_waypointsActionGoal()
      if self.action_result is None:
        self.action_result = reflex_control.msg.follow_waypointsActionResult()
      if self.action_feedback is None:
        self.action_feedback = reflex_control.msg.follow_waypointsActionFeedback()
    else:
      self.action_goal = reflex_control.msg.follow_waypointsActionGoal()
      self.action_result = reflex_control.msg.follow_waypointsActionResult()
      self.action_feedback = reflex_control.msg.follow_waypointsActionFeedback()

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
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.action_goal.goal.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.waypoints:
        _v1 = val1.position
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.action_goal.goal.velocities)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.action_goal.goal.velocities))
      length = len(self.action_goal.goal.time_stamps)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.time_stamps:
        _x = val1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.action_result.status.status))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7di().pack(_x.action_result.result.final_pose.position.x, _x.action_result.result.final_pose.position.y, _x.action_result.result.final_pose.position.z, _x.action_result.result.final_pose.orientation.x, _x.action_result.result.final_pose.orientation.y, _x.action_result.result.final_pose.orientation.z, _x.action_result.result.final_pose.orientation.w, _x.action_result.result.error_code))
      _x = self.action_result.result.error_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.action_feedback.status.status))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_22d().pack(_x.action_feedback.feedback.desired.position.x, _x.action_feedback.feedback.desired.position.y, _x.action_feedback.feedback.desired.position.z, _x.action_feedback.feedback.desired.orientation.x, _x.action_feedback.feedback.desired.orientation.y, _x.action_feedback.feedback.desired.orientation.z, _x.action_feedback.feedback.desired.orientation.w, _x.action_feedback.feedback.actual.position.x, _x.action_feedback.feedback.actual.position.y, _x.action_feedback.feedback.actual.position.z, _x.action_feedback.feedback.actual.orientation.x, _x.action_feedback.feedback.actual.orientation.y, _x.action_feedback.feedback.actual.orientation.z, _x.action_feedback.feedback.actual.orientation.w, _x.action_feedback.feedback.error.position.x, _x.action_feedback.feedback.error.position.y, _x.action_feedback.feedback.error.position.z, _x.action_feedback.feedback.error.orientation.x, _x.action_feedback.feedback.error.orientation.y, _x.action_feedback.feedback.error.orientation.z, _x.action_feedback.feedback.error.orientation.w, _x.action_feedback.feedback.progress))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.action_goal is None:
        self.action_goal = reflex_control.msg.follow_waypointsActionGoal()
      if self.action_result is None:
        self.action_result = reflex_control.msg.follow_waypointsActionResult()
      if self.action_feedback is None:
        self.action_feedback = reflex_control.msg.follow_waypointsActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal_id.id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.waypoints = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.action_goal.goal.waypoints.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.action_goal.goal.velocities = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.time_stamps = []
      for i in range(0, length):
        val1 = genpy.Duration()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.action_goal.goal.time_stamps.append(val1)
      _x = self
      start = end
      end += 12
      (_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.action_result.result.final_pose.position.x, _x.action_result.result.final_pose.position.y, _x.action_result.result.final_pose.position.z, _x.action_result.result.final_pose.orientation.x, _x.action_result.result.final_pose.orientation.y, _x.action_result.result.final_pose.orientation.z, _x.action_result.result.final_pose.orientation.w, _x.action_result.result.error_code,) = _get_struct_7di().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.error_string = str[start:end].decode('utf-8')
      else:
        self.action_result.result.error_string = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.text = str[start:end]
      _x = self
      start = end
      end += 176
      (_x.action_feedback.feedback.desired.position.x, _x.action_feedback.feedback.desired.position.y, _x.action_feedback.feedback.desired.position.z, _x.action_feedback.feedback.desired.orientation.x, _x.action_feedback.feedback.desired.orientation.y, _x.action_feedback.feedback.desired.orientation.z, _x.action_feedback.feedback.desired.orientation.w, _x.action_feedback.feedback.actual.position.x, _x.action_feedback.feedback.actual.position.y, _x.action_feedback.feedback.actual.position.z, _x.action_feedback.feedback.actual.orientation.x, _x.action_feedback.feedback.actual.orientation.y, _x.action_feedback.feedback.actual.orientation.z, _x.action_feedback.feedback.actual.orientation.w, _x.action_feedback.feedback.error.position.x, _x.action_feedback.feedback.error.position.y, _x.action_feedback.feedback.error.position.z, _x.action_feedback.feedback.error.orientation.x, _x.action_feedback.feedback.error.orientation.y, _x.action_feedback.feedback.error.orientation.z, _x.action_feedback.feedback.error.orientation.w, _x.action_feedback.feedback.progress,) = _get_struct_22d().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.action_goal.goal.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.waypoints:
        _v5 = val1.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.action_goal.goal.velocities)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.action_goal.goal.velocities.tostring())
      length = len(self.action_goal.goal.time_stamps)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_goal.goal.time_stamps:
        _x = val1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.action_result.status.status))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7di().pack(_x.action_result.result.final_pose.position.x, _x.action_result.result.final_pose.position.y, _x.action_result.result.final_pose.position.z, _x.action_result.result.final_pose.orientation.x, _x.action_result.result.final_pose.orientation.y, _x.action_result.result.final_pose.orientation.z, _x.action_result.result.final_pose.orientation.w, _x.action_result.result.error_code))
      _x = self.action_result.result.error_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.action_feedback.status.status))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_22d().pack(_x.action_feedback.feedback.desired.position.x, _x.action_feedback.feedback.desired.position.y, _x.action_feedback.feedback.desired.position.z, _x.action_feedback.feedback.desired.orientation.x, _x.action_feedback.feedback.desired.orientation.y, _x.action_feedback.feedback.desired.orientation.z, _x.action_feedback.feedback.desired.orientation.w, _x.action_feedback.feedback.actual.position.x, _x.action_feedback.feedback.actual.position.y, _x.action_feedback.feedback.actual.position.z, _x.action_feedback.feedback.actual.orientation.x, _x.action_feedback.feedback.actual.orientation.y, _x.action_feedback.feedback.actual.orientation.z, _x.action_feedback.feedback.actual.orientation.w, _x.action_feedback.feedback.error.position.x, _x.action_feedback.feedback.error.position.y, _x.action_feedback.feedback.error.position.z, _x.action_feedback.feedback.error.orientation.x, _x.action_feedback.feedback.error.orientation.y, _x.action_feedback.feedback.error.orientation.z, _x.action_feedback.feedback.error.orientation.w, _x.action_feedback.feedback.progress))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.action_goal is None:
        self.action_goal = reflex_control.msg.follow_waypointsActionGoal()
      if self.action_result is None:
        self.action_result = reflex_control.msg.follow_waypointsActionResult()
      if self.action_feedback is None:
        self.action_feedback = reflex_control.msg.follow_waypointsActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal_id.id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.waypoints = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.action_goal.goal.waypoints.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.action_goal.goal.velocities = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_goal.goal.time_stamps = []
      for i in range(0, length):
        val1 = genpy.Duration()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.action_goal.goal.time_stamps.append(val1)
      _x = self
      start = end
      end += 12
      (_x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.action_result.result.final_pose.position.x, _x.action_result.result.final_pose.position.y, _x.action_result.result.final_pose.position.z, _x.action_result.result.final_pose.orientation.x, _x.action_result.result.final_pose.orientation.y, _x.action_result.result.final_pose.orientation.z, _x.action_result.result.final_pose.orientation.w, _x.action_result.result.error_code,) = _get_struct_7di().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.error_string = str[start:end].decode('utf-8')
      else:
        self.action_result.result.error_string = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.text = str[start:end]
      _x = self
      start = end
      end += 176
      (_x.action_feedback.feedback.desired.position.x, _x.action_feedback.feedback.desired.position.y, _x.action_feedback.feedback.desired.position.z, _x.action_feedback.feedback.desired.orientation.x, _x.action_feedback.feedback.desired.orientation.y, _x.action_feedback.feedback.desired.orientation.z, _x.action_feedback.feedback.desired.orientation.w, _x.action_feedback.feedback.actual.position.x, _x.action_feedback.feedback.actual.position.y, _x.action_feedback.feedback.actual.position.z, _x.action_feedback.feedback.actual.orientation.x, _x.action_feedback.feedback.actual.orientation.y, _x.action_feedback.feedback.actual.orientation.z, _x.action_feedback.feedback.actual.orientation.w, _x.action_feedback.feedback.error.position.x, _x.action_feedback.feedback.error.position.y, _x.action_feedback.feedback.error.position.z, _x.action_feedback.feedback.error.orientation.x, _x.action_feedback.feedback.error.orientation.y, _x.action_feedback.feedback.error.orientation.z, _x.action_feedback.feedback.error.orientation.w, _x.action_feedback.feedback.progress,) = _get_struct_22d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_7di = None
def _get_struct_7di():
    global _struct_7di
    if _struct_7di is None:
        _struct_7di = struct.Struct("<7di")
    return _struct_7di
_struct_22d = None
def _get_struct_22d():
    global _struct_22d
    if _struct_22d is None:
        _struct_22d = struct.Struct("<22d")
    return _struct_22d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
