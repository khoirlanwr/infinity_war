; Auto-generated. Do not edit!


(cl:in-package ersow_comm-msg)


;//! \htmlinclude data_agent2.msg.html

(cl:defclass <data_agent2> (roslisp-msg-protocol:ros-message)
  ((agent2_value
    :reader agent2_value
    :initarg :agent2_value
    :type cl:integer
    :initform 0)
   (agent2_posx
    :reader agent2_posx
    :initarg :agent2_posx
    :type cl:fixnum
    :initform 0)
   (agent2_posy
    :reader agent2_posy
    :initarg :agent2_posy
    :type cl:fixnum
    :initform 0)
   (agent2_post
    :reader agent2_post
    :initarg :agent2_post
    :type cl:fixnum
    :initform 0)
   (agent2_ballx
    :reader agent2_ballx
    :initarg :agent2_ballx
    :type cl:fixnum
    :initform 0)
   (agent2_bally
    :reader agent2_bally
    :initarg :agent2_bally
    :type cl:fixnum
    :initform 0)
   (agent2_ball_detected
    :reader agent2_ball_detected
    :initarg :agent2_ball_detected
    :type cl:fixnum
    :initform 0)
   (agent2_pass
    :reader agent2_pass
    :initarg :agent2_pass
    :type cl:fixnum
    :initform 0)
   (agent2_condition
    :reader agent2_condition
    :initarg :agent2_condition
    :type cl:fixnum
    :initform 0))
)

(cl:defclass data_agent2 (<data_agent2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_agent2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_agent2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ersow_comm-msg:<data_agent2> is deprecated: use ersow_comm-msg:data_agent2 instead.")))

(cl:ensure-generic-function 'agent2_value-val :lambda-list '(m))
(cl:defmethod agent2_value-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_value-val is deprecated.  Use ersow_comm-msg:agent2_value instead.")
  (agent2_value m))

(cl:ensure-generic-function 'agent2_posx-val :lambda-list '(m))
(cl:defmethod agent2_posx-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_posx-val is deprecated.  Use ersow_comm-msg:agent2_posx instead.")
  (agent2_posx m))

(cl:ensure-generic-function 'agent2_posy-val :lambda-list '(m))
(cl:defmethod agent2_posy-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_posy-val is deprecated.  Use ersow_comm-msg:agent2_posy instead.")
  (agent2_posy m))

(cl:ensure-generic-function 'agent2_post-val :lambda-list '(m))
(cl:defmethod agent2_post-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_post-val is deprecated.  Use ersow_comm-msg:agent2_post instead.")
  (agent2_post m))

(cl:ensure-generic-function 'agent2_ballx-val :lambda-list '(m))
(cl:defmethod agent2_ballx-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_ballx-val is deprecated.  Use ersow_comm-msg:agent2_ballx instead.")
  (agent2_ballx m))

(cl:ensure-generic-function 'agent2_bally-val :lambda-list '(m))
(cl:defmethod agent2_bally-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_bally-val is deprecated.  Use ersow_comm-msg:agent2_bally instead.")
  (agent2_bally m))

(cl:ensure-generic-function 'agent2_ball_detected-val :lambda-list '(m))
(cl:defmethod agent2_ball_detected-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_ball_detected-val is deprecated.  Use ersow_comm-msg:agent2_ball_detected instead.")
  (agent2_ball_detected m))

(cl:ensure-generic-function 'agent2_pass-val :lambda-list '(m))
(cl:defmethod agent2_pass-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_pass-val is deprecated.  Use ersow_comm-msg:agent2_pass instead.")
  (agent2_pass m))

(cl:ensure-generic-function 'agent2_condition-val :lambda-list '(m))
(cl:defmethod agent2_condition-val ((m <data_agent2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ersow_comm-msg:agent2_condition-val is deprecated.  Use ersow_comm-msg:agent2_condition instead.")
  (agent2_condition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_agent2>) ostream)
  "Serializes a message object of type '<data_agent2>"
  (cl:let* ((signed (cl:slot-value msg 'agent2_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_posx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_posy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_post)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_ballx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_bally)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_ball_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_pass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_condition)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_agent2>) istream)
  "Deserializes a message object of type '<data_agent2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent2_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_posx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_posy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_post)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_ballx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_bally)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agent2_ball_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_pass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agent2_condition)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_agent2>)))
  "Returns string type for a message object of type '<data_agent2>"
  "ersow_comm/data_agent2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_agent2)))
  "Returns string type for a message object of type 'data_agent2"
  "ersow_comm/data_agent2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_agent2>)))
  "Returns md5sum for a message object of type '<data_agent2>"
  "75da7416470ab6003bdb7cff78be02a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_agent2)))
  "Returns md5sum for a message object of type 'data_agent2"
  "75da7416470ab6003bdb7cff78be02a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_agent2>)))
  "Returns full string definition for message of type '<data_agent2>"
  (cl:format cl:nil "int32 agent2_value~%~%uint16 agent2_posx~%uint16 agent2_posy~%uint16 agent2_post~%~%uint16 agent2_ballx~%uint16 agent2_bally~%uint16 agent2_ball_detected~%~%uint8 agent2_pass~%uint8 agent2_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_agent2)))
  "Returns full string definition for message of type 'data_agent2"
  (cl:format cl:nil "int32 agent2_value~%~%uint16 agent2_posx~%uint16 agent2_posy~%uint16 agent2_post~%~%uint16 agent2_ballx~%uint16 agent2_bally~%uint16 agent2_ball_detected~%~%uint8 agent2_pass~%uint8 agent2_condition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_agent2>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_agent2>))
  "Converts a ROS message object to a list"
  (cl:list 'data_agent2
    (cl:cons ':agent2_value (agent2_value msg))
    (cl:cons ':agent2_posx (agent2_posx msg))
    (cl:cons ':agent2_posy (agent2_posy msg))
    (cl:cons ':agent2_post (agent2_post msg))
    (cl:cons ':agent2_ballx (agent2_ballx msg))
    (cl:cons ':agent2_bally (agent2_bally msg))
    (cl:cons ':agent2_ball_detected (agent2_ball_detected msg))
    (cl:cons ':agent2_pass (agent2_pass msg))
    (cl:cons ':agent2_condition (agent2_condition msg))
))
