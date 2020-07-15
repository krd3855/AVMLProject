; Auto-generated. Do not edit!


(cl:in-package extendedkalmanfilters-msg)


;//! \htmlinclude RMSError.msg.html

(cl:defclass <RMSError> (roslisp-msg-protocol:ros-message)
  ((x_err_
    :reader x_err_
    :initarg :x_err_
    :type cl:float
    :initform 0.0)
   (y_err_
    :reader y_err_
    :initarg :y_err_
    :type cl:float
    :initform 0.0)
   (vx_err_
    :reader vx_err_
    :initarg :vx_err_
    :type cl:float
    :initform 0.0)
   (vy_err_
    :reader vy_err_
    :initarg :vy_err_
    :type cl:float
    :initform 0.0))
)

(cl:defclass RMSError (<RMSError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RMSError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RMSError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extendedkalmanfilters-msg:<RMSError> is deprecated: use extendedkalmanfilters-msg:RMSError instead.")))

(cl:ensure-generic-function 'x_err_-val :lambda-list '(m))
(cl:defmethod x_err_-val ((m <RMSError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:x_err_-val is deprecated.  Use extendedkalmanfilters-msg:x_err_ instead.")
  (x_err_ m))

(cl:ensure-generic-function 'y_err_-val :lambda-list '(m))
(cl:defmethod y_err_-val ((m <RMSError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:y_err_-val is deprecated.  Use extendedkalmanfilters-msg:y_err_ instead.")
  (y_err_ m))

(cl:ensure-generic-function 'vx_err_-val :lambda-list '(m))
(cl:defmethod vx_err_-val ((m <RMSError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vx_err_-val is deprecated.  Use extendedkalmanfilters-msg:vx_err_ instead.")
  (vx_err_ m))

(cl:ensure-generic-function 'vy_err_-val :lambda-list '(m))
(cl:defmethod vy_err_-val ((m <RMSError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vy_err_-val is deprecated.  Use extendedkalmanfilters-msg:vy_err_ instead.")
  (vy_err_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RMSError>) ostream)
  "Serializes a message object of type '<RMSError>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_err_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_err_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vx_err_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vy_err_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RMSError>) istream)
  "Deserializes a message object of type '<RMSError>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_err_) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_err_) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx_err_) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy_err_) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RMSError>)))
  "Returns string type for a message object of type '<RMSError>"
  "extendedkalmanfilters/RMSError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RMSError)))
  "Returns string type for a message object of type 'RMSError"
  "extendedkalmanfilters/RMSError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RMSError>)))
  "Returns md5sum for a message object of type '<RMSError>"
  "80ba0cfe9e605460189c638c99edde45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RMSError)))
  "Returns md5sum for a message object of type 'RMSError"
  "80ba0cfe9e605460189c638c99edde45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RMSError>)))
  "Returns full string definition for message of type '<RMSError>"
  (cl:format cl:nil "float64 x_err_~%float64 y_err_~%float64 vx_err_~%float64 vy_err_~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RMSError)))
  "Returns full string definition for message of type 'RMSError"
  (cl:format cl:nil "float64 x_err_~%float64 y_err_~%float64 vx_err_~%float64 vy_err_~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RMSError>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RMSError>))
  "Converts a ROS message object to a list"
  (cl:list 'RMSError
    (cl:cons ':x_err_ (x_err_ msg))
    (cl:cons ':y_err_ (y_err_ msg))
    (cl:cons ':vx_err_ (vx_err_ msg))
    (cl:cons ':vy_err_ (vy_err_ msg))
))
