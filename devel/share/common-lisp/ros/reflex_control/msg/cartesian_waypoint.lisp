; Auto-generated. Do not edit!


(cl:in-package reflex_control-msg)


;//! \htmlinclude cartesian_waypoint.msg.html

(cl:defclass <cartesian_waypoint> (roslisp-msg-protocol:ros-message)
  ((wp
    :reader wp
    :initarg :wp
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (dur
    :reader dur
    :initarg :dur
    :type cl:real
    :initform 0)
   (tol_trans
    :reader tol_trans
    :initarg :tol_trans
    :type cl:float
    :initform 0.0)
   (tol_angle
    :reader tol_angle
    :initarg :tol_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass cartesian_waypoint (<cartesian_waypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cartesian_waypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cartesian_waypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reflex_control-msg:<cartesian_waypoint> is deprecated: use reflex_control-msg:cartesian_waypoint instead.")))

(cl:ensure-generic-function 'wp-val :lambda-list '(m))
(cl:defmethod wp-val ((m <cartesian_waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:wp-val is deprecated.  Use reflex_control-msg:wp instead.")
  (wp m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <cartesian_waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:vel-val is deprecated.  Use reflex_control-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'dur-val :lambda-list '(m))
(cl:defmethod dur-val ((m <cartesian_waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:dur-val is deprecated.  Use reflex_control-msg:dur instead.")
  (dur m))

(cl:ensure-generic-function 'tol_trans-val :lambda-list '(m))
(cl:defmethod tol_trans-val ((m <cartesian_waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:tol_trans-val is deprecated.  Use reflex_control-msg:tol_trans instead.")
  (tol_trans m))

(cl:ensure-generic-function 'tol_angle-val :lambda-list '(m))
(cl:defmethod tol_angle-val ((m <cartesian_waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reflex_control-msg:tol_angle-val is deprecated.  Use reflex_control-msg:tol_angle instead.")
  (tol_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cartesian_waypoint>) ostream)
  "Serializes a message object of type '<cartesian_waypoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wp) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'dur)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'dur) (cl:floor (cl:slot-value msg 'dur)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tol_trans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tol_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cartesian_waypoint>) istream)
  "Deserializes a message object of type '<cartesian_waypoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wp) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dur) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tol_trans) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tol_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cartesian_waypoint>)))
  "Returns string type for a message object of type '<cartesian_waypoint>"
  "reflex_control/cartesian_waypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cartesian_waypoint)))
  "Returns string type for a message object of type 'cartesian_waypoint"
  "reflex_control/cartesian_waypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cartesian_waypoint>)))
  "Returns md5sum for a message object of type '<cartesian_waypoint>"
  "ffb15808d34b1a9dcaeedf62fbc0a4dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cartesian_waypoint)))
  "Returns md5sum for a message object of type 'cartesian_waypoint"
  "ffb15808d34b1a9dcaeedf62fbc0a4dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cartesian_waypoint>)))
  "Returns full string definition for message of type '<cartesian_waypoint>"
  (cl:format cl:nil "geometry_msgs/Pose wp~%float64 vel~%duration dur~%float64 tol_trans~%float64 tol_angle~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cartesian_waypoint)))
  "Returns full string definition for message of type 'cartesian_waypoint"
  (cl:format cl:nil "geometry_msgs/Pose wp~%float64 vel~%duration dur~%float64 tol_trans~%float64 tol_angle~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cartesian_waypoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wp))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cartesian_waypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'cartesian_waypoint
    (cl:cons ':wp (wp msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':dur (dur msg))
    (cl:cons ':tol_trans (tol_trans msg))
    (cl:cons ':tol_angle (tol_angle msg))
))
