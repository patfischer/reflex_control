; Auto-generated. Do not edit!


(cl:in-package reflex_control-msg)


;//! \htmlinclude follow_waypointsAction.msg.html

(cl:defclass <follow_waypointsAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type reflex_control-msg:follow_waypointsActionGoal
    :initform (cl:make-instance 'reflex_control-msg:follow_waypointsActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type reflex_control-msg:follow_waypointsActionResult
    :initform (cl:make-instance 'reflex_control-msg:follow_waypointsActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type reflex_control-msg:follow_waypointsActionFeedback
    :initform (cl:make-instance 'reflex_control-msg:follow_waypointsActionFeedback)))
)

(cl:defclass follow_waypointsAction (<follow_waypointsAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <follow_waypointsAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'follow_waypointsAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-msg:<follow_waypointsAction> is deprecated: use reflex_control-msg:follow_waypointsAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <follow_waypointsAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:action_goal-val is deprecated.  Use reflex_control-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <follow_waypointsAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:action_result-val is deprecated.  Use reflex_control-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <follow_waypointsAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:action_feedback-val is deprecated.  Use reflex_control-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <follow_waypointsAction>) ostream)
  "Serializes a message object of type '<follow_waypointsAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <follow_waypointsAction>) istream)
  "Deserializes a message object of type '<follow_waypointsAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<follow_waypointsAction>)))
  "Returns string type for a message object of type '<follow_waypointsAction>"
  "reflex_control/follow_waypointsAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'follow_waypointsAction)))
  "Returns string type for a message object of type 'follow_waypointsAction"
  "reflex_control/follow_waypointsAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<follow_waypointsAction>)))
  "Returns md5sum for a message object of type '<follow_waypointsAction>"
  "c861657d2be878dea438133d74c24823")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'follow_waypointsAction)))
  "Returns md5sum for a message object of type 'follow_waypointsAction"
  "c861657d2be878dea438133d74c24823")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<follow_waypointsAction>)))
  "Returns full string definition for message of type '<follow_waypointsAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%follow_waypointsActionGoal action_goal~%follow_waypointsActionResult action_result~%follow_waypointsActionFeedback action_feedback~%~%================================================================================~%MSG: reflex_control/follow_waypointsActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%follow_waypointsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: reflex_control/follow_waypointsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#either one velocity/time_stamps or same as waypoints~%~%geometry_msgs/Pose[] waypoints~%float64[] velocities~%duration[] time_stamps~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: reflex_control/follow_waypointsActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%follow_waypointsResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: reflex_control/follow_waypointsResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#results definition~%~%geometry_msgs/Pose final_pose~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 PREEMPTED = -1~%int32 INVALID_GOAL = -2~%~%string error_string~%~%~%================================================================================~%MSG: reflex_control/follow_waypointsActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%follow_waypointsFeedback feedback~%~%================================================================================~%MSG: reflex_control/follow_waypointsFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%geometry_msgs/Pose desired~%geometry_msgs/Pose actual~%geometry_msgs/Pose error~%float64 progress~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'follow_waypointsAction)))
  "Returns full string definition for message of type 'follow_waypointsAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%follow_waypointsActionGoal action_goal~%follow_waypointsActionResult action_result~%follow_waypointsActionFeedback action_feedback~%~%================================================================================~%MSG: reflex_control/follow_waypointsActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%follow_waypointsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: reflex_control/follow_waypointsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#either one velocity/time_stamps or same as waypoints~%~%geometry_msgs/Pose[] waypoints~%float64[] velocities~%duration[] time_stamps~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: reflex_control/follow_waypointsActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%follow_waypointsResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: reflex_control/follow_waypointsResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#results definition~%~%geometry_msgs/Pose final_pose~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 PREEMPTED = -1~%int32 INVALID_GOAL = -2~%~%string error_string~%~%~%================================================================================~%MSG: reflex_control/follow_waypointsActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%follow_waypointsFeedback feedback~%~%================================================================================~%MSG: reflex_control/follow_waypointsFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%geometry_msgs/Pose desired~%geometry_msgs/Pose actual~%geometry_msgs/Pose error~%float64 progress~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <follow_waypointsAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <follow_waypointsAction>))
  "Converts a ROS message object to a list"
  (cl:list 'follow_waypointsAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))