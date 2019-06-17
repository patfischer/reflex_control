; Auto-generated. Do not edit!


(cl:in-package reflex_control-msg)


;//! \htmlinclude FollowWaypointsResult.msg.html

(cl:defclass <FollowWaypointsResult> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (error_string
    :reader error_string
    :initarg :error_string
    :type cl:string
    :initform ""))
)

(cl:defclass FollowWaypointsResult (<FollowWaypointsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowWaypointsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowWaypointsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-msg:<FollowWaypointsResult> is deprecated: use reflex_control-msg:FollowWaypointsResult instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FollowWaypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:error_code-val is deprecated.  Use reflex_control-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <FollowWaypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:error_string-val is deprecated.  Use reflex_control-msg:error_string instead.")
  (error_string m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FollowWaypointsResult>)))
    "Constants for message type '<FollowWaypointsResult>"
  '((:SUCCESSFUL . 0)
    (:PREEMPTED . -1)
    (:INVALID_GOAL . -2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FollowWaypointsResult)))
    "Constants for message type 'FollowWaypointsResult"
  '((:SUCCESSFUL . 0)
    (:PREEMPTED . -1)
    (:INVALID_GOAL . -2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowWaypointsResult>) ostream)
  "Serializes a message object of type '<FollowWaypointsResult>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowWaypointsResult>) istream)
  "Deserializes a message object of type '<FollowWaypointsResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowWaypointsResult>)))
  "Returns string type for a message object of type '<FollowWaypointsResult>"
  "reflex_control/FollowWaypointsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowWaypointsResult)))
  "Returns string type for a message object of type 'FollowWaypointsResult"
  "reflex_control/FollowWaypointsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowWaypointsResult>)))
  "Returns md5sum for a message object of type '<FollowWaypointsResult>"
  "6a8cd2e22d0e467baf093f6d8eaf6692")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowWaypointsResult)))
  "Returns md5sum for a message object of type 'FollowWaypointsResult"
  "6a8cd2e22d0e467baf093f6d8eaf6692")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowWaypointsResult>)))
  "Returns full string definition for message of type '<FollowWaypointsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#results definition~%~%#geometry_msgs/Pose final_pose~%~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 PREEMPTED = -1~%int32 INVALID_GOAL = -2~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowWaypointsResult)))
  "Returns full string definition for message of type 'FollowWaypointsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#results definition~%~%#geometry_msgs/Pose final_pose~%~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 PREEMPTED = -1~%int32 INVALID_GOAL = -2~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowWaypointsResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'error_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowWaypointsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowWaypointsResult
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_string (error_string msg))
))
