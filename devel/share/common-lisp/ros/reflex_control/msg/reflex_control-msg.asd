
(cl:in-package :asdf)

(defsystem "reflex_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControllerSwitch" :depends-on ("_package_ControllerSwitch"))
    (:file "_package_ControllerSwitch" :depends-on ("_package"))
    (:file "JointTorqueComparison" :depends-on ("_package_JointTorqueComparison"))
    (:file "_package_JointTorqueComparison" :depends-on ("_package"))
    (:file "follow_waypointsAction" :depends-on ("_package_follow_waypointsAction"))
    (:file "_package_follow_waypointsAction" :depends-on ("_package"))
    (:file "follow_waypointsActionFeedback" :depends-on ("_package_follow_waypointsActionFeedback"))
    (:file "_package_follow_waypointsActionFeedback" :depends-on ("_package"))
    (:file "follow_waypointsActionGoal" :depends-on ("_package_follow_waypointsActionGoal"))
    (:file "_package_follow_waypointsActionGoal" :depends-on ("_package"))
    (:file "follow_waypointsActionResult" :depends-on ("_package_follow_waypointsActionResult"))
    (:file "_package_follow_waypointsActionResult" :depends-on ("_package"))
    (:file "follow_waypointsFeedback" :depends-on ("_package_follow_waypointsFeedback"))
    (:file "_package_follow_waypointsFeedback" :depends-on ("_package"))
    (:file "follow_waypointsGoal" :depends-on ("_package_follow_waypointsGoal"))
    (:file "_package_follow_waypointsGoal" :depends-on ("_package"))
    (:file "follow_waypointsResult" :depends-on ("_package_follow_waypointsResult"))
    (:file "_package_follow_waypointsResult" :depends-on ("_package"))
  ))