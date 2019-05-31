;; Auto-generated. Do not edit!


(when (boundp 'reflex_control::change_param)
  (if (not (find-package "REFLEX_CONTROL"))
    (make-package "REFLEX_CONTROL"))
  (shadow 'change_param (find-package "REFLEX_CONTROL")))
(unless (find-package "REFLEX_CONTROL::CHANGE_PARAM")
  (make-package "REFLEX_CONTROL::CHANGE_PARAM"))
(unless (find-package "REFLEX_CONTROL::CHANGE_PARAMREQUEST")
  (make-package "REFLEX_CONTROL::CHANGE_PARAMREQUEST"))
(unless (find-package "REFLEX_CONTROL::CHANGE_PARAMRESPONSE")
  (make-package "REFLEX_CONTROL::CHANGE_PARAMRESPONSE"))

(in-package "ROS")





(defclass reflex_control::change_paramRequest
  :super ros::object
  :slots (_inp ))

(defmethod reflex_control::change_paramRequest
  (:init
   (&key
    ((:inp __inp) 0)
    )
   (send-super :init)
   (setq _inp (round __inp))
   self)
  (:inp
   (&optional __inp)
   (if __inp (setq _inp __inp)) _inp)
  (:serialization-length
   ()
   (+
    ;; int64 _inp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _inp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _inp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _inp) (= (length (_inp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_inp . bv) 0) 0) s)
              (write-long (ash (elt (_inp . bv) 1) -1) s))
             ((and (class _inp) (= (length (_inp . bv)) 1)) ;; big1
              (write-long (elt (_inp . bv) 0) s)
              (write-long (if (>= _inp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _inp s)(write-long (if (>= _inp 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _inp
#+(or :alpha :irix6 :x86_64)
      (setf _inp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _inp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass reflex_control::change_paramResponse
  :super ros::object
  :slots (_fb ))

(defmethod reflex_control::change_paramResponse
  (:init
   (&key
    ((:fb __fb) nil)
    )
   (send-super :init)
   (setq _fb __fb)
   self)
  (:fb
   (&optional __fb)
   (if __fb (setq _fb __fb)) _fb)
  (:serialization-length
   ()
   (+
    ;; bool _fb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _fb
       (if _fb (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _fb
     (setq _fb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass reflex_control::change_param
  :super ros::object
  :slots ())

(setf (get reflex_control::change_param :md5sum-) "6f0624492d8870cb5ae06854b717afa1")
(setf (get reflex_control::change_param :datatype-) "reflex_control/change_param")
(setf (get reflex_control::change_param :request) reflex_control::change_paramRequest)
(setf (get reflex_control::change_param :response) reflex_control::change_paramResponse)

(defmethod reflex_control::change_paramRequest
  (:response () (instance reflex_control::change_paramResponse :init)))

(setf (get reflex_control::change_paramRequest :md5sum-) "6f0624492d8870cb5ae06854b717afa1")
(setf (get reflex_control::change_paramRequest :datatype-) "reflex_control/change_paramRequest")
(setf (get reflex_control::change_paramRequest :definition-)
      "int64 inp
---
bool fb

")

(setf (get reflex_control::change_paramResponse :md5sum-) "6f0624492d8870cb5ae06854b717afa1")
(setf (get reflex_control::change_paramResponse :datatype-) "reflex_control/change_paramResponse")
(setf (get reflex_control::change_paramResponse :definition-)
      "int64 inp
---
bool fb

")



(provide :reflex_control/change_param "6f0624492d8870cb5ae06854b717afa1")


