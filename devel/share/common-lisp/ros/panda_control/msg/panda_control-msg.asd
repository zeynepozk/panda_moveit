
(cl:in-package :asdf)

(defsystem "panda_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "armCmd" :depends-on ("_package_armCmd"))
    (:file "_package_armCmd" :depends-on ("_package"))
    (:file "pandaTelemetry" :depends-on ("_package_pandaTelemetry"))
    (:file "_package_pandaTelemetry" :depends-on ("_package"))
  ))