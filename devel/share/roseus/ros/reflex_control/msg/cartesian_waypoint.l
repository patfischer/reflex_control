;; Auto-generated. Do not edit!


(when (boundp 'reflex_control::cartesian_waypoint)
  (if (not (find-package "REFLEX_CONTROL"))
    (make-package "REFLEX_CONTROL"))
  (shadow 'cartesian_waypoint (find-package "REFLEX_CONTROL")))
(unless (find-package "REFLEX_CONTROL::CARTESIAN_WAYPOINT")
  (make-package "REFLEX_CONTROL::CARTESIAN_WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude cartesian_waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass reflex_control::cartesian_waypoint
  :super ros::object
  :slots (_wp _vel _dur _tol_trans _tol_angle ))

(defmethod reflex_control::cartesian_waypoint
  (:init
   (&key
    ((:wp __wp) (instance geometry_msgs::Pose :init))
    ((:vel __vel) 0.0)
    ((:dur __dur) (instance ros::time :init))
    ((:tol_trans __tol_trans) 0.0)
    ((:tol_angle __tol_angle) 0.0)
    )
   (send-super :init)
   (setq _wp __wp)
   (setq _vel (float __vel))
   (setq _dur __dur)
   (setq _tol_trans (float __tol_trans))
   (setq _tol_angle (float __tol_angle))
   self)
  (:wp
   (&rest __wp)
   (if (keywordp (car __wp))
       (send* _wp __wp)
     (progn
       (if __wp (setq _wp (car __wp)))
       _wp)))
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:dur
   (&optional __dur)
   (if __dur (setq _dur __dur)) _dur)
  (:tol_trans
   (&optional __tol_trans)
   (if __tol_trans (setq _tol_trans __tol_trans)) _tol_trans)
  (:tol_angle
   (&optional __tol_angle)
   (if __tol_angle (setq _tol_angle __tol_angle)) _tol_angle)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _wp
    (send _wp :serialization-length)
    ;; float64 _vel
    8
    ;; duration _dur
    8
    ;; float64 _tol_trans
    8
    ;; float64 _tol_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _wp
       (send _wp :serialize s)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; duration _dur
       (write-long (send _dur :sec) s) (write-long (send _dur :nsec) s)
     ;; float64 _tol_trans
       (sys::poke _tol_trans (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tol_angle
       (sys::poke _tol_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _wp
     (send _wp :deserialize buf ptr-) (incf ptr- (send _wp :serialization-length))
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; duration _dur
     (send _dur :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _dur :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _tol_trans
     (setq _tol_trans (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tol_angle
     (setq _tol_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get reflex_control::cartesian_waypoint :md5sum-) "ffb15808d34b1a9dcaeedf62fbc0a4dd")
(setf (get reflex_control::cartesian_waypoint :datatype-) "reflex_control/cartesian_waypoint")
(setf (get reflex_control::cartesian_waypoint :definition-)
      "geometry_msgs/Pose wp
float64 vel
duration dur
float64 tol_trans
float64 tol_angle

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

")



(provide :reflex_control/cartesian_waypoint "ffb15808d34b1a9dcaeedf62fbc0a4dd")


