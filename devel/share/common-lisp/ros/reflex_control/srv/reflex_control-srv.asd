
(cl:in-package :asdf)

(defsystem "reflex_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "change_param" :depends-on ("_package_change_param"))
    (:file "_package_change_param" :depends-on ("_package"))
  ))