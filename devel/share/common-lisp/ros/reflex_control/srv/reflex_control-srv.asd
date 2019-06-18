
(cl:in-package :asdf)

(defsystem "reflex_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "change_param" :depends-on ("_package_change_param"))
    (:file "_package_change_param" :depends-on ("_package"))
    (:file "switch_control_mode" :depends-on ("_package_switch_control_mode"))
    (:file "_package_switch_control_mode" :depends-on ("_package"))
  ))