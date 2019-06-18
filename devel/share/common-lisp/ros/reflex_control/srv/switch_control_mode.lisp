; Auto-generated. Do not edit!


(cl:in-package reflex_control-srv)


;//! \htmlinclude switch_control_mode-request.msg.html

(cl:defclass <switch_control_mode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass switch_control_mode-request (<switch_control_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <switch_control_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'switch_control_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-srv:<switch_control_mode-request> is deprecated: use reflex_control-srv:switch_control_mode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <switch_control_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-srv:mode-val is deprecated.  Use reflex_control-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <switch_control_mode-request>) ostream)
  "Serializes a message object of type '<switch_control_mode-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <switch_control_mode-request>) istream)
  "Deserializes a message object of type '<switch_control_mode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<switch_control_mode-request>)))
  "Returns string type for a service object of type '<switch_control_mode-request>"
  "reflex_control/switch_control_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switch_control_mode-request)))
  "Returns string type for a service object of type 'switch_control_mode-request"
  "reflex_control/switch_control_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<switch_control_mode-request>)))
  "Returns md5sum for a message object of type '<switch_control_mode-request>"
  "40f33faf6a072a0a32d8bb11873693e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'switch_control_mode-request)))
  "Returns md5sum for a message object of type 'switch_control_mode-request"
  "40f33faf6a072a0a32d8bb11873693e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<switch_control_mode-request>)))
  "Returns full string definition for message of type '<switch_control_mode-request>"
  (cl:format cl:nil "int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'switch_control_mode-request)))
  "Returns full string definition for message of type 'switch_control_mode-request"
  (cl:format cl:nil "int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <switch_control_mode-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <switch_control_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'switch_control_mode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude switch_control_mode-response.msg.html

(cl:defclass <switch_control_mode-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass switch_control_mode-response (<switch_control_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <switch_control_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'switch_control_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-srv:<switch_control_mode-response> is deprecated: use reflex_control-srv:switch_control_mode-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <switch_control_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-srv:ok-val is deprecated.  Use reflex_control-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <switch_control_mode-response>) ostream)
  "Serializes a message object of type '<switch_control_mode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <switch_control_mode-response>) istream)
  "Deserializes a message object of type '<switch_control_mode-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<switch_control_mode-response>)))
  "Returns string type for a service object of type '<switch_control_mode-response>"
  "reflex_control/switch_control_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switch_control_mode-response)))
  "Returns string type for a service object of type 'switch_control_mode-response"
  "reflex_control/switch_control_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<switch_control_mode-response>)))
  "Returns md5sum for a message object of type '<switch_control_mode-response>"
  "40f33faf6a072a0a32d8bb11873693e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'switch_control_mode-response)))
  "Returns md5sum for a message object of type 'switch_control_mode-response"
  "40f33faf6a072a0a32d8bb11873693e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<switch_control_mode-response>)))
  "Returns full string definition for message of type '<switch_control_mode-response>"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'switch_control_mode-response)))
  "Returns full string definition for message of type 'switch_control_mode-response"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <switch_control_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <switch_control_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'switch_control_mode-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'switch_control_mode)))
  'switch_control_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'switch_control_mode)))
  'switch_control_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switch_control_mode)))
  "Returns string type for a service object of type '<switch_control_mode>"
  "reflex_control/switch_control_mode")