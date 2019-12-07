
(cl:in-package :asdf)

(defsystem "ersow_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "data_agent0" :depends-on ("_package_data_agent0"))
    (:file "_package_data_agent0" :depends-on ("_package"))
    (:file "data_agent1" :depends-on ("_package_data_agent1"))
    (:file "_package_data_agent1" :depends-on ("_package"))
    (:file "data_agent2" :depends-on ("_package_data_agent2"))
    (:file "_package_data_agent2" :depends-on ("_package"))
    (:file "data_agent3" :depends-on ("_package_data_agent3"))
    (:file "_package_data_agent3" :depends-on ("_package"))
  ))