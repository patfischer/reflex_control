; Auto-generated. Do not edit!


(cl:in-package reflex_control-msg)


;//! \htmlinclude follow_waypointsFeedback.msg.html

(cl:defclass <follow_waypointsFeedback> (roslisp-msg-protocol:ros-message)
  ((desired
    :reader desired
    :initarg :desired
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (actual
    :reader actual
    :initarg :actual
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (error
    :reader error
    :initarg :error
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0))
)

(cl:defclass follow_waypointsFeedback (<follow_waypointsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <follow_waypointsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'follow_waypointsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-msg:<follow_waypointsFeedback> is deprecated: use reflex_control-msg:follow_waypointsFeedback instead.")))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <follow_waypointsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:desired-val is deprecated.  Use reflex_control-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'actual-val :lambda-list '(m))
(cl:defmethod actual-val ((m <follow_waypointsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:actual-val is deprecated.  Use reflex_control-msg:actual instead.")
  (actual m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <follow_waypointsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:error-val is deprecated.  Use reflex_control-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <follow_waypointsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:progress-val is deprecated.  Use reflex_control-msg:progress instead.")
  (progress m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <follow_waypointsFeedback>) ostream)
  "Serializes a message object of type '<follow_waypointsFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <follow_waypointsFeedback>) istream)
  "Deserializes a message object of type '<follow_waypointsFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<follow_waypointsFeedback>)))
  "Returns string type for a message object of type '<follow_waypointsFeedback>"
  "reflex_control/follow_waypointsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'follow_waypointsFeedback)))
  "Returns string type for a message object of type 'follow_waypointsFeedback"
  "reflex_control/follow_waypointsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<follow_waypointsFeedback>)))
  "Returns md5sum for a message object of type '<follow_waypointsFeedback>"
  "0e2fc254189e46d3d827d900a29d7809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'follow_waypointsFeedback)))
  "Returns md5sum for a message object of type 'follow_waypointsFeedback"
  "0e2fc254189e46d3d827d900a29d7809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<follow_waypointsFeedback>)))
  "Returns full string definition for message of type '<follow_waypointsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%geometry_msgs/Pose desired~%geometry_msgs/Pose actual~%geometry_msgs/Pose error~%float64 progress~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'follow_waypointsFeedback)))
  "Returns full string definition for message of type 'follow_waypointsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%geometry_msgs/Pose desired~%geometry_msgs/Pose actual~%geometry_msgs/Pose error~%float64 progress~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <follow_waypointsFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <follow_waypointsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'follow_waypointsFeedback
    (cl:cons ':desired (desired msg))
    (cl:cons ':actual (actual msg))
    (cl:cons ':error (error msg))
    (cl:cons ':progress (progress msg))
))
