; Auto-generated. Do not edit!


(cl:in-package extendedkalmanfilters-msg)


;//! \htmlinclude FusedMesurements.msg.html

(cl:defclass <FusedMesurements> (roslisp-msg-protocol:ros-message)
  ((x_estimated_
    :reader x_estimated_
    :initarg :x_estimated_
    :type cl:float
    :initform 0.0)
   (y_estimated_
    :reader y_estimated_
    :initarg :y_estimated_
    :type cl:float
    :initform 0.0)
   (time_stamp_
    :reader time_stamp_
    :initarg :time_stamp_
    :type cl:integer
    :initform 0)
   (vx_estimated_
    :reader vx_estimated_
    :initarg :vx_estimated_
    :type cl:float
    :initform 0.0)
   (vy_estimated_
    :reader vy_estimated_
    :initarg :vy_estimated_
    :type cl:float
    :initform 0.0)
   (x_gt_
    :reader x_gt_
    :initarg :x_gt_
    :type cl:float
    :initform 0.0)
   (y_gt_
    :reader y_gt_
    :initarg :y_gt_
    :type cl:float
    :initform 0.0)
   (vx_gt_
    :reader vx_gt_
    :initarg :vx_gt_
    :type cl:float
    :initform 0.0)
   (vy_gt_
    :reader vy_gt_
    :initarg :vy_gt_
    :type cl:float
    :initform 0.0))
)

(cl:defclass FusedMesurements (<FusedMesurements>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusedMesurements>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusedMesurements)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extendedkalmanfilters-msg:<FusedMesurements> is deprecated: use extendedkalmanfilters-msg:FusedMesurements instead.")))

(cl:ensure-generic-function 'x_estimated_-val :lambda-list '(m))
(cl:defmethod x_estimated_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:x_estimated_-val is deprecated.  Use extendedkalmanfilters-msg:x_estimated_ instead.")
  (x_estimated_ m))

(cl:ensure-generic-function 'y_estimated_-val :lambda-list '(m))
(cl:defmethod y_estimated_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:y_estimated_-val is deprecated.  Use extendedkalmanfilters-msg:y_estimated_ instead.")
  (y_estimated_ m))

(cl:ensure-generic-function 'time_stamp_-val :lambda-list '(m))
(cl:defmethod time_stamp_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:time_stamp_-val is deprecated.  Use extendedkalmanfilters-msg:time_stamp_ instead.")
  (time_stamp_ m))

(cl:ensure-generic-function 'vx_estimated_-val :lambda-list '(m))
(cl:defmethod vx_estimated_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vx_estimated_-val is deprecated.  Use extendedkalmanfilters-msg:vx_estimated_ instead.")
  (vx_estimated_ m))

(cl:ensure-generic-function 'vy_estimated_-val :lambda-list '(m))
(cl:defmethod vy_estimated_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vy_estimated_-val is deprecated.  Use extendedkalmanfilters-msg:vy_estimated_ instead.")
  (vy_estimated_ m))

(cl:ensure-generic-function 'x_gt_-val :lambda-list '(m))
(cl:defmethod x_gt_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:x_gt_-val is deprecated.  Use extendedkalmanfilters-msg:x_gt_ instead.")
  (x_gt_ m))

(cl:ensure-generic-function 'y_gt_-val :lambda-list '(m))
(cl:defmethod y_gt_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:y_gt_-val is deprecated.  Use extendedkalmanfilters-msg:y_gt_ instead.")
  (y_gt_ m))

(cl:ensure-generic-function 'vx_gt_-val :lambda-list '(m))
(cl:defmethod vx_gt_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vx_gt_-val is deprecated.  Use extendedkalmanfilters-msg:vx_gt_ instead.")
  (vx_gt_ m))

(cl:ensure-generic-function 'vy_gt_-val :lambda-list '(m))
(cl:defmethod vy_gt_-val ((m <FusedMesurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vy_gt_-val is deprecated.  Use extendedkalmanfilters-msg:vy_gt_ instead.")
  (vy_gt_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusedMesurements>) ostream)
  "Serializes a message object of type '<FusedMesurements>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_estimated_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_estimated_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_stamp_)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx_estimated_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy_estimated_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_gt_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_gt_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx_gt_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy_gt_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusedMesurements>) istream)
  "Deserializes a message object of type '<FusedMesurements>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_estimated_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_estimated_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_stamp_)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx_estimated_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy_estimated_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_gt_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_gt_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx_gt_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy_gt_) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusedMesurements>)))
  "Returns string type for a message object of type '<FusedMesurements>"
  "extendedkalmanfilters/FusedMesurements")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusedMesurements)))
  "Returns string type for a message object of type 'FusedMesurements"
  "extendedkalmanfilters/FusedMesurements")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusedMesurements>)))
  "Returns md5sum for a message object of type '<FusedMesurements>"
  "78dd8106ff3952f3bd4013441cdc9454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusedMesurements)))
  "Returns md5sum for a message object of type 'FusedMesurements"
  "78dd8106ff3952f3bd4013441cdc9454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusedMesurements>)))
  "Returns full string definition for message of type '<FusedMesurements>"
  (cl:format cl:nil "float32 x_estimated_~%float32 y_estimated_~%uint64 time_stamp_~%float32 vx_estimated_~%float32 vy_estimated_~%float32 x_gt_~%float32 y_gt_~%float32 vx_gt_~%float32 vy_gt_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusedMesurements)))
  "Returns full string definition for message of type 'FusedMesurements"
  (cl:format cl:nil "float32 x_estimated_~%float32 y_estimated_~%uint64 time_stamp_~%float32 vx_estimated_~%float32 vy_estimated_~%float32 x_gt_~%float32 y_gt_~%float32 vx_gt_~%float32 vy_gt_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusedMesurements>))
  (cl:+ 0
     4
     4
     8
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusedMesurements>))
  "Converts a ROS message object to a list"
  (cl:list 'FusedMesurements
    (cl:cons ':x_estimated_ (x_estimated_ msg))
    (cl:cons ':y_estimated_ (y_estimated_ msg))
    (cl:cons ':time_stamp_ (time_stamp_ msg))
    (cl:cons ':vx_estimated_ (vx_estimated_ msg))
    (cl:cons ':vy_estimated_ (vy_estimated_ msg))
    (cl:cons ':x_gt_ (x_gt_ msg))
    (cl:cons ':y_gt_ (y_gt_ msg))
    (cl:cons ':vx_gt_ (vx_gt_ msg))
    (cl:cons ':vy_gt_ (vy_gt_ msg))
))
