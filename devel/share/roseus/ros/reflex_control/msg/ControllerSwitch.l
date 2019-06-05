;; Auto-generated. Do not edit!


(when (boundp 'reflex_control::ControllerSwitch)
  (if (not (find-package "REFLEX_CONTROL"))
    (make-package "REFLEX_CONTROL"))
  (shadow 'ControllerSwitch (find-package "REFLEX_CONTROL")))
(unless (find-package "REFLEX_CONTROL::CONTROLLERSWITCH")
  (make-package "REFLEX_CONTROL::CONTROLLERSWITCH"))

(in-package "ROS")
;;//! \htmlinclude ControllerSwitch.msg.html


(defclass reflex_control::ControllerSwitch
  :super ros::object
  :slots (_controllerSwitch ))

(defmethod reflex_control::ControllerSwitch
  (:init
   (&key
    ((:controllerSwitch __controllerSwitch) 0)
    )
   (send-super :init)
   (setq _controllerSwitch (round __controllerSwitch))
   self)
  (:controllerSwitch
   (&optional __controllerSwitch)
   (if __controllerSwitch (setq _controllerSwitch __controllerSwitch)) _controllerSwitch)
  (:serialization-length
   ()
   (+
    ;; int32 _controllerSwitch
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _controllerSwitch
       (write-long _controllerSwitch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _controllerSwitch
     (setq _controllerSwitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get reflex_control::ControllerSwitch :md5sum-) "5cdf8e0decb24a6822040fa60c5dc790")
(setf (get reflex_control::ControllerSwitch :datatype-) "reflex_control/ControllerSwitch")
(setf (get reflex_control::ControllerSwitch :definition-)
      "int32 controllerSwitch

")



(provide :reflex_control/ControllerSwitch "5cdf8e0decb24a6822040fa60c5dc790")


