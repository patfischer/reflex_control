; Auto-generated. Do not edit!


(cl:in-package reflex_control-srv)


;//! \htmlinclude change_param-request.msg.html

(cl:defclass <change_param-request> (roslisp-msg-protocol:ros-message)
  ((inp
    :reader inp
    :initarg :inp
    :type cl:integer
    :initform 0))
)

(cl:defclass change_param-request (<change_param-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <change_param-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'change_param-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-srv:<change_param-request> is deprecated: use reflex_control-srv:change_param-request instead.")))

(cl:ensure-generic-function 'inp-val :lambda-list '(m))
(cl:defmethod inp-val ((m <change_param-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-srv:inp-val is deprecated.  Use reflex_control-srv:inp instead.")
  (inp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <change_param-request>) ostream)
  "Serializes a message object of type '<change_param-request>"
  (cl:let* ((signed (cl:slot-value msg 'inp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <change_param-request>) istream)
  "Deserializes a message object of type '<change_param-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<change_param-request>)))
  "Returns string type for a service object of type '<change_param-request>"
  "reflex_control/change_paramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_param-request)))
  "Returns string type for a service object of type 'change_param-request"
  "reflex_control/change_paramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<change_param-request>)))
  "Returns md5sum for a message object of type '<change_param-request>"
  "6f0624492d8870cb5ae06854b717afa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'change_param-request)))
  "Returns md5sum for a message object of type 'change_param-request"
  "6f0624492d8870cb5ae06854b717afa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<change_param-request>)))
  "Returns full string definition for message of type '<change_param-request>"
  (cl:format cl:nil "int64 inp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'change_param-request)))
  "Returns full string definition for message of type 'change_param-request"
  (cl:format cl:nil "int64 inp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <change_param-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <change_param-request>))
  "Converts a ROS message object to a list"
  (cl:list 'change_param-request
    (cl:cons ':inp (inp msg))
))
;//! \htmlinclude change_param-response.msg.html

(cl:defclass <change_param-response> (roslisp-msg-protocol:ros-message)
  ((fb
    :reader fb
    :initarg :fb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass change_param-response (<change_param-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <change_param-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'change_param-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-srv:<change_param-response> is deprecated: use reflex_control-srv:change_param-response instead.")))

(cl:ensure-generic-function 'fb-val :lambda-list '(m))
(cl:defmethod fb-val ((m <change_param-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-srv:fb-val is deprecated.  Use reflex_control-srv:fb instead.")
  (fb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <change_param-response>) ostream)
  "Serializes a message object of type '<change_param-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <change_param-response>) istream)
  "Deserializes a message object of type '<change_param-response>"
    (cl:setf (cl:slot-value msg 'fb) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<change_param-response>)))
  "Returns string type for a service object of type '<change_param-response>"
  "reflex_control/change_paramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_param-response)))
  "Returns string type for a service object of type 'change_param-response"
  "reflex_control/change_paramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<change_param-response>)))
  "Returns md5sum for a message object of type '<change_param-response>"
  "6f0624492d8870cb5ae06854b717afa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'change_param-response)))
  "Returns md5sum for a message object of type 'change_param-response"
  "6f0624492d8870cb5ae06854b717afa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<change_param-response>)))
  "Returns full string definition for message of type '<change_param-response>"
  (cl:format cl:nil "bool fb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'change_param-response)))
  "Returns full string definition for message of type 'change_param-response"
  (cl:format cl:nil "bool fb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <change_param-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <change_param-response>))
  "Converts a ROS message object to a list"
  (cl:list 'change_param-response
    (cl:cons ':fb (fb msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'change_param)))
  'change_param-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'change_param)))
  'change_param-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'change_param)))
  "Returns string type for a service object of type '<change_param>"
  "reflex_control/change_param")