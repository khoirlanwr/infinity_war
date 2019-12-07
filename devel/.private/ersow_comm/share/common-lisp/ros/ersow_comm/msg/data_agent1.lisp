; Auto-generated. Do not edit!


(cl:in-package ersow_comm-msg)


;//! \htmlinclude data_agent1.msg.html

(cl:defclass <data_agent1> (roslisp-msg-protocol:ros-message)
  ((agent1_value
    :reader agent1_value
    :initarg :agent1_value
    :type cl:integer
    :initform 0)
   (agent1_posx
    :reader agent1_posx
    :initarg :agent1_posx
    :type cl:fixnum
    :initform 0)
   (agent1_posy
    :reader agent1_posy
    :initarg :agent1_posy
    :type cl:fixnum
    :initform 0)
   (agent1_post
    :reader agent1_post
    :initarg :agent1_post
    :type cl:fixnum
    :initform 0)
   (agent1_ballx
    :reader agent1_ballx
    :initarg :agent1_ballx
    :type cl:fixnum
    :initform 0)
   (agent1_bally
    :reader agent1_bally
    :initarg :agent1_bally
    :type cl:fixnum
    :initform 0)
   (agent1_ball_detected
    :reader agent1_ball_detected
    :initarg :agent1_ball_detected
    :type cl:fixnum
    :initform 0)
   (agent1_pass
    :reader agent1_pass
    :initarg :agent1_pass
    :type cl:fixnum
    :initform 0)
   (agent1_condition
    :reader agent1_condition
    :initarg :agent1_condition
    :type cl:fixnum
    :initform 0))
)

(cl:defclass data_agent1 (<data_agent1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_agent1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_agent1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ersow_comm-msg:<data_agent1> is deprecated: use ersow_comm-msg:data_agent1 instead.")))

(cl:ensure-generic-function 'agent1_value-val :lambda-list '(m))
(cl:defmethod agent1_value-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_value-val is deprecated.  Use ersow_comm-msg:agent1_value instead.")
  (agent1_value m))

(cl:ensure-generic-function 'agent1_posx-val :lambda-list '(m))
(cl:defmethod agent1_posx-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_posx-val is deprecated.  Use ersow_comm-msg:agent1_posx instead.")
  (agent1_posx m))

(cl:ensure-generic-function 'agent1_posy-val :lambda-list '(m))
(cl:defmethod agent1_posy-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_posy-val is deprecated.  Use ersow_comm-msg:agent1_posy instead.")
  (agent1_posy m))

(cl:ensure-generic-function 'agent1_post-val :lambda-list '(m))
(cl:defmethod agent1_post-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_post-val is deprecated.  Use ersow_comm-msg:agent1_post instead.")
  (agent1_post m))

(cl:ensure-generic-function 'agent1_ballx-val :lambda-list '(m))
(cl:defmethod agent1_ballx-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_ballx-val is deprecated.  Use ersow_comm-msg:agent1_ballx instead.")
  (agent1_ballx m))

(cl:ensure-generic-function 'agent1_bally-val :lambda-list '(m))
(cl:defmethod agent1_bally-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_bally-val is deprecated.  Use ersow_comm-msg:agent1_bally instead.")
  (agent1_bally m))

(cl:ensure-generic-function 'agent1_ball_detected-val :lambda-list '(m))
(cl:defmethod agent1_ball_detected-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_ball_detected-val is deprecated.  Use ersow_comm-msg:agent1_ball_detected instead.")
  (agent1_ball_detected m))

(cl:ensure-generic-function 'agent1_pass-val :lambda-list '(m))
(cl:defmethod agent1_pass-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_pass-val is deprecated.  Use ersow_comm-msg:agent1_pass instead.")
  (agent1_pass m))

(cl:ensure-generic-function 'agent1_condition-val :lambda-list '(m))
(cl:defmethod agent1_condition-val ((m <data_agent1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent1_condition-val is deprecated.  Use ersow_comm-msg:agent1_condition instead.")
  (agent1_condition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_agent1>) ostream)
  "Serializes a message object of type '<data_agent1>"
  (cl:let* ((signed (cl:slot-value msg 'agent1_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_pass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_condition)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_agent1>) istream)
  "Deserializes a message object of type '<data_agent1>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent1_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent1_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_pass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent1_condition)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_agent1>)))
  "Returns string type for a message object of type '<data_agent1>"
  "ersow_comm/data_agent1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_agent1)))
  "Returns string type for a message object of type 'data_agent1"
  "ersow_comm/data_agent1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_agent1>)))
  "Returns md5sum for a message object of type '<data_agent1>"
  "022256aa1a3bdbeeb5a7d45acc3c370c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_agent1)))
  "Returns md5sum for a message object of type 'data_agent1"
  "022256aa1a3bdbeeb5a7d45acc3c370c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_agent1>)))
  "Returns full string definition for message of type '<data_agent1>"
  (cl:format cl:nil "int32 agent1_value~%~%uint16 agent1_posx~%uint16 agent1_posy~%uint16 agent1_post~%~%uint16 agent1_ballx~%uint16 agent1_bally~%uint16 agent1_ball_detected~%~%uint8 agent1_pass~%uint8 agent1_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_agent1)))
  "Returns full string definition for message of type 'data_agent1"
  (cl:format cl:nil "int32 agent1_value~%~%uint16 agent1_posx~%uint16 agent1_posy~%uint16 agent1_post~%~%uint16 agent1_ballx~%uint16 agent1_bally~%uint16 agent1_ball_detected~%~%uint8 agent1_pass~%uint8 agent1_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_agent1>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_agent1>))
  "Converts a ROS message object to a list"
  (cl:list 'data_agent1
    (cl:cons ':agent1_value (agent1_value msg))
    (cl:cons ':agent1_posx (agent1_posx msg))
    (cl:cons ':agent1_posy (agent1_posy msg))
    (cl:cons ':agent1_post (agent1_post msg))
    (cl:cons ':agent1_ballx (agent1_ballx msg))
    (cl:cons ':agent1_bally (agent1_bally msg))
    (cl:cons ':agent1_ball_detected (agent1_ball_detected msg))
    (cl:cons ':agent1_pass (agent1_pass msg))
    (cl:cons ':agent1_condition (agent1_condition msg))
))
