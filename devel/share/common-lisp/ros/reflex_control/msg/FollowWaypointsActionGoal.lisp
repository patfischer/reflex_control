; Auto-generated. Do not edit!


(cl:in-package reflex_control-msg)


;//! \htmlinclude FollowWaypointsActionGoal.msg.html

(cl:defclass <FollowWaypointsActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type reflex_control-msg:FollowWaypointsGoal
    :initform (cl:make-instance 'reflex_control-msg:FollowWaypointsGoal)))
)

(cl:defclass FollowWaypointsActionGoal (<FollowWaypointsActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowWaypointsActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowWaypointsActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-msg:<FollowWaypointsActionGoal> is deprecated: use reflex_control-msg:FollowWaypointsActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowWaypointsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:header-val is deprecated.  Use reflex_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <FollowWaypointsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:goal_id-val is deprecated.  Use reflex_control-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <FollowWaypointsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:goal-val is deprecated.  Use reflex_control-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowWaypointsActionGoal>) ostream)
  "Serializes a message object of type '<FollowWaypointsActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowWaypointsActionGoal>) istream)
  "Deserializes a message object of type '<FollowWaypointsActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowWaypointsActionGoal>)))
  "Returns string type for a message object of type '<FollowWaypointsActionGoal>"
  "reflex_control/FollowWaypointsActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowWaypointsActionGoal)))
  "Returns string type for a message object of type 'FollowWaypointsActionGoal"
  "reflex_control/FollowWaypointsActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowWaypointsActionGoal>)))
  "Returns md5sum for a message object of type '<FollowWaypointsActionGoal>"
  "7b26c08f9ac41d4c3f882423ec5d03c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowWaypointsActionGoal)))
  "Returns md5sum for a message object of type 'FollowWaypointsActionGoal"
  "7b26c08f9ac41d4c3f882423ec5d03c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowWaypointsActionGoal>)))
  "Returns full string definition for message of type '<FollowWaypointsActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%FollowWaypointsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: reflex_control/FollowWaypointsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#either one velocity/time_stamps or same as waypoints~%~%geometry_msgs/Pose[] waypoints~%float64[] velocities~%duration[] segment_durations~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowWaypointsActionGoal)))
  "Returns full string definition for message of type 'FollowWaypointsActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%FollowWaypointsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: reflex_control/FollowWaypointsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#either one velocity/time_stamps or same as waypoints~%~%geometry_msgs/Pose[] waypoints~%float64[] velocities~%duration[] segment_durations~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowWaypointsActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowWaypointsActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowWaypointsActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
