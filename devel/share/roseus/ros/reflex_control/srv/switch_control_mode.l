;; Auto-generated. Do not edit!


(when (boundp 'reflex_control::switch_control_mode)
  (if (not (find-package "REFLEX_CONTROL"))
    (make-package "REFLEX_CONTROL"))
  (shadow 'switch_control_mode (find-package "REFLEX_CONTROL")))
(unless (find-package "REFLEX_CONTROL::SWITCH_CONTROL_MODE")
  (make-package "REFLEX_CONTROL::SWITCH_CONTROL_MODE"))
(unless (find-package "REFLEX_CONTROL::SWITCH_CONTROL_MODEREQUEST")
  (make-package "REFLEX_CONTROL::SWITCH_CONTROL_MODEREQUEST"))
(unless (find-package "REFLEX_CONTROL::SWITCH_CONTROL_MODERESPONSE")
  (make-package "REFLEX_CONTROL::SWITCH_CONTROL_MODERESPONSE"))

(in-package "ROS")





(defclass reflex_control::switch_control_modeRequest
  :super ros::object
  :slots (_mode ))

(defmethod reflex_control::switch_control_modeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass reflex_control::switch_control_modeResponse
  :super ros::object
  :slots (_ok ))

(defmethod reflex_control::switch_control_modeResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass reflex_control::switch_control_mode
  :super ros::object
  :slots ())

(setf (get reflex_control::switch_control_mode :md5sum-) "40f33faf6a072a0a32d8bb11873693e7")
(setf (get reflex_control::switch_control_mode :datatype-) "reflex_control/switch_control_mode")
(setf (get reflex_control::switch_control_mode :request) reflex_control::switch_control_modeRequest)
(setf (get reflex_control::switch_control_mode :response) reflex_control::switch_control_modeResponse)

(defmethod reflex_control::switch_control_modeRequest
  (:response () (instance reflex_control::switch_control_modeResponse :init)))

(setf (get reflex_control::switch_control_modeRequest :md5sum-) "40f33faf6a072a0a32d8bb11873693e7")
(setf (get reflex_control::switch_control_modeRequest :datatype-) "reflex_control/switch_control_modeRequest")
(setf (get reflex_control::switch_control_modeRequest :definition-)
      "int32 mode
---
bool ok

")

(setf (get reflex_control::switch_control_modeResponse :md5sum-) "40f33faf6a072a0a32d8bb11873693e7")
(setf (get reflex_control::switch_control_modeResponse :datatype-) "reflex_control/switch_control_modeResponse")
(setf (get reflex_control::switch_control_modeResponse :definition-)
      "int32 mode
---
bool ok

")



(provide :reflex_control/switch_control_mode "40f33faf6a072a0a32d8bb11873693e7")


