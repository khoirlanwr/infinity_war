; Auto-generated. Do not edit!


(cl:in-package ersow_comm-msg)


;//! \htmlinclude data_agent3.msg.html

(cl:defclass <data_agent3> (roslisp-msg-protocol:ros-message)
  ((agent3_value
    :reader agent3_value
    :initarg :agent3_value
    :type cl:integer
    :initform 0)
   (agent3_posx
    :reader agent3_posx
    :initarg :agent3_posx
    :type cl:fixnum
    :initform 0)
   (agent3_posy
    :reader agent3_posy
    :initarg :agent3_posy
    :type cl:fixnum
    :initform 0)
   (agent3_post
    :reader agent3_post
    :initarg :agent3_post
    :type cl:fixnum
    :initform 0)
   (agent3_ballx
    :reader agent3_ballx
    :initarg :agent3_ballx
    :type cl:fixnum
    :initform 0)
   (agent3_bally
    :reader agent3_bally
    :initarg :agent3_bally
    :type cl:fixnum
    :initform 0)
   (agent3_ball_detected
    :reader agent3_ball_detected
    :initarg :agent3_ball_detected
    :type cl:fixnum
    :initform 0)
   (agent3_pass
    :reader agent3_pass
    :initarg :agent3_pass
    :type cl:fixnum
    :initform 0)
   (agent3_condition
    :reader agent3_condition
    :initarg :agent3_condition
    :type cl:fixnum
    :initform 0))
)

(cl:defclass data_agent3 (<data_agent3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_agent3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_agent3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ersow_comm-msg:<data_agent3> is deprecated: use ersow_comm-msg:data_agent3 instead.")))

(cl:ensure-generic-function 'agent3_value-val :lambda-list '(m))
(cl:defmethod agent3_value-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_value-val is deprecated.  Use ersow_comm-msg:agent3_value instead.")
  (agent3_value m))

(cl:ensure-generic-function 'agent3_posx-val :lambda-list '(m))
(cl:defmethod agent3_posx-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_posx-val is deprecated.  Use ersow_comm-msg:agent3_posx instead.")
  (agent3_posx m))

(cl:ensure-generic-function 'agent3_posy-val :lambda-list '(m))
(cl:defmethod agent3_posy-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_posy-val is deprecated.  Use ersow_comm-msg:agent3_posy instead.")
  (agent3_posy m))

(cl:ensure-generic-function 'agent3_post-val :lambda-list '(m))
(cl:defmethod agent3_post-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_post-val is deprecated.  Use ersow_comm-msg:agent3_post instead.")
  (agent3_post m))

(cl:ensure-generic-function 'agent3_ballx-val :lambda-list '(m))
(cl:defmethod agent3_ballx-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_ballx-val is deprecated.  Use ersow_comm-msg:agent3_ballx instead.")
  (agent3_ballx m))

(cl:ensure-generic-function 'agent3_bally-val :lambda-list '(m))
(cl:defmethod agent3_bally-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_bally-val is deprecated.  Use ersow_comm-msg:agent3_bally instead.")
  (agent3_bally m))

(cl:ensure-generic-function 'agent3_ball_detected-val :lambda-list '(m))
(cl:defmethod agent3_ball_detected-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_ball_detected-val is deprecated.  Use ersow_comm-msg:agent3_ball_detected instead.")
  (agent3_ball_detected m))

(cl:ensure-generic-function 'agent3_pass-val :lambda-list '(m))
(cl:defmethod agent3_pass-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_pass-val is deprecated.  Use ersow_comm-msg:agent3_pass instead.")
  (agent3_pass m))

(cl:ensure-generic-function 'agent3_condition-val :lambda-list '(m))
(cl:defmethod agent3_condition-val ((m <data_agent3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent3_condition-val is deprecated.  Use ersow_comm-msg:agent3_condition instead.")
  (agent3_condition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_agent3>) ostream)
  "Serializes a message object of type '<data_agent3>"
  (cl:let* ((signed (cl:slot-value msg 'agent3_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_pass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_condition)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_agent3>) istream)
  "Deserializes a message object of type '<data_agent3>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent3_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent3_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_pass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent3_condition)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_agent3>)))
  "Returns string type for a message object of type '<data_agent3>"
  "ersow_comm/data_agent3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_agent3)))
  "Returns string type for a message object of type 'data_agent3"
  "ersow_comm/data_agent3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_agent3>)))
  "Returns md5sum for a message object of type '<data_agent3>"
  "4236bf70894c8b40f3eee3b69d67749c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_agent3)))
  "Returns md5sum for a message object of type 'data_agent3"
  "4236bf70894c8b40f3eee3b69d67749c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_agent3>)))
  "Returns full string definition for message of type '<data_agent3>"
  (cl:format cl:nil "int32 agent3_value~%~%uint16 agent3_posx~%uint16 agent3_posy~%uint16 agent3_post~%~%uint16 agent3_ballx~%uint16 agent3_bally~%uint16 agent3_ball_detected~%~%uint8 agent3_pass~%uint8 agent3_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_agent3)))
  "Returns full string definition for message of type 'data_agent3"
  (cl:format cl:nil "int32 agent3_value~%~%uint16 agent3_posx~%uint16 agent3_posy~%uint16 agent3_post~%~%uint16 agent3_ballx~%uint16 agent3_bally~%uint16 agent3_ball_detected~%~%uint8 agent3_pass~%uint8 agent3_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_agent3>))
  (cl:+ 0
     4
     2
     2
     2
     2
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_agent3>))
  "Converts a ROS message object to a list"
  (cl:list 'data_agent3
    (cl:cons ':agent3_value (agent3_value msg))
    (cl:cons ':agent3_posx (agent3_posx msg))
    (cl:cons ':agent3_posy (agent3_posy msg))
    (cl:cons ':agent3_post (agent3_post msg))
    (cl:cons ':agent3_ballx (agent3_ballx msg))
    (cl:cons ':agent3_bally (agent3_bally msg))
    (cl:cons ':agent3_ball_detected (agent3_ball_detected msg))
    (cl:cons ':agent3_pass (agent3_pass msg))
    (cl:cons ':agent3_condition (agent3_condition msg))
))
