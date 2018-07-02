
(cl:in-package :asdf)

(defsystem "ros_arduino_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CmdDiffVel" :depends-on ("_package_CmdDiffVel"))
    (:file "_package_CmdDiffVel" :depends-on ("_package"))
    (:file "Encoders" :depends-on ("_package_Encoders"))
    (:file "_package_Encoders" :depends-on ("_package"))
  ))