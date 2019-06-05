; Auto-generated. Do not edit!


(cl:in-package reflex_control-msg)


;//! \htmlinclude ControllerSwitch.msg.html

(cl:defclass <ControllerSwitch> (roslisp-msg-protocol:ros-message)
  ((controllerSwitch
    :reader controllerSwitch
    :initarg :controllerSwitch
    :type cl:integer
    :initform 0))
)

(cl:defclass ControllerSwitch (<ControllerSwitch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerSwitch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerSwitch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-msg:<ControllerSwitch> is deprecated: use reflex_control-msg:ControllerSwitch instead.")))

(cl:ensure-generic-function 'controllerSwitch-val :lambda-list '(m))
(cl:defmethod controllerSwitch-val ((m <ControllerSwitch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:controllerSwitch-val is deprecated.  Use reflex_control-msg:controllerSwitch instead.")
  (controllerSwitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerSwitch>) ostream)
  "Serializes a message object of type '<ControllerSwitch>"
  (cl:let* ((signed (cl:slot-value msg 'controllerSwitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerSwitch>) istream)
  "Deserializes a message object of type '<ControllerSwitch>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controllerSwitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerSwitch>)))
  "Returns string type for a message object of type '<ControllerSwitch>"
  "reflex_control/ControllerSwitch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerSwitch)))
  "Returns string type for a message object of type 'ControllerSwitch"
  "reflex_control/ControllerSwitch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerSwitch>)))
  "Returns md5sum for a message object of type '<ControllerSwitch>"
  "5cdf8e0decb24a6822040fa60c5dc790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerSwitch)))
  "Returns md5sum for a message object of type 'ControllerSwitch"
  "5cdf8e0decb24a6822040fa60c5dc790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerSwitch>)))
  "Returns full string definition for message of type '<ControllerSwitch>"
  (cl:format cl:nil "int32 controllerSwitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerSwitch)))
  "Returns full string definition for message of type 'ControllerSwitch"
  (cl:format cl:nil "int32 controllerSwitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerSwitch>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerSwitch>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerSwitch
    (cl:cons ':controllerSwitch (controllerSwitch msg))
))
