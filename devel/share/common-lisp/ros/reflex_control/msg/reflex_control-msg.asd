
(cl:in-package :asdf)

(defsystem "reflex_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ControllerSwitch" :depends-on ("_package_ControllerSwitch"))
    (:file "_package_ControllerSwitch" :depends-on ("_package"))
    (:file "JointTorqueComparison" :depends-on ("_package_JointTorqueComparison"))
    (:file "_package_JointTorqueComparison" :depends-on ("_package"))
  ))