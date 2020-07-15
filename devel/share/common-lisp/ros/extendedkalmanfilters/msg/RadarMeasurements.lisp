; Auto-generated. Do not edit!


(cl:in-package extendedkalmanfilters-msg)


;//! \htmlinclude RadarMeasurements.msg.html

(cl:defclass <RadarMeasurements> (roslisp-msg-protocol:ros-message)
  ((sensor_type_
    :reader sensor_type_
    :initarg :sensor_type_
    :type cl:string
    :initform "")
   (rho_measured_
    :reader rho_measured_
    :initarg :rho_measured_
    :type cl:float
    :initform 0.0)
   (phi_measured_
    :reader phi_measured_
    :initarg :phi_measured_
    :type cl:float
    :initform 0.0)
   (rhodot_measured_
    :reader rhodot_measured_
    :initarg :rhodot_measured_
    :type cl:float
    :initform 0.0)
   (time_stamp_
    :reader time_stamp_
    :initarg :time_stamp_
    :type cl:integer
    :initform 0)
   (x_ground_truth_
    :reader x_ground_truth_
    :initarg :x_ground_truth_
    :type cl:float
    :initform 0.0)
   (y_ground_truth_
    :reader y_ground_truth_
    :initarg :y_ground_truth_
    :type cl:float
    :initform 0.0)
   (vx_ground_truth_
    :reader vx_ground_truth_
    :initarg :vx_ground_truth_
    :type cl:float
    :initform 0.0)
   (vy_ground_truth_
    :reader vy_ground_truth_
    :initarg :vy_ground_truth_
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarMeasurements (<RadarMeasurements>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarMeasurements>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarMeasurements)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name extendedkalmanfilters-msg:<RadarMeasurements> is deprecated: use extendedkalmanfilters-msg:RadarMeasurements instead.")))

(cl:ensure-generic-function 'sensor_type_-val :lambda-list '(m))
(cl:defmethod sensor_type_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:sensor_type_-val is deprecated.  Use extendedkalmanfilters-msg:sensor_type_ instead.")
  (sensor_type_ m))

(cl:ensure-generic-function 'rho_measured_-val :lambda-list '(m))
(cl:defmethod rho_measured_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:rho_measured_-val is deprecated.  Use extendedkalmanfilters-msg:rho_measured_ instead.")
  (rho_measured_ m))

(cl:ensure-generic-function 'phi_measured_-val :lambda-list '(m))
(cl:defmethod phi_measured_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:phi_measured_-val is deprecated.  Use extendedkalmanfilters-msg:phi_measured_ instead.")
  (phi_measured_ m))

(cl:ensure-generic-function 'rhodot_measured_-val :lambda-list '(m))
(cl:defmethod rhodot_measured_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:rhodot_measured_-val is deprecated.  Use extendedkalmanfilters-msg:rhodot_measured_ instead.")
  (rhodot_measured_ m))

(cl:ensure-generic-function 'time_stamp_-val :lambda-list '(m))
(cl:defmethod time_stamp_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:time_stamp_-val is deprecated.  Use extendedkalmanfilters-msg:time_stamp_ instead.")
  (time_stamp_ m))

(cl:ensure-generic-function 'x_ground_truth_-val :lambda-list '(m))
(cl:defmethod x_ground_truth_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:x_ground_truth_-val is deprecated.  Use extendedkalmanfilters-msg:x_ground_truth_ instead.")
  (x_ground_truth_ m))

(cl:ensure-generic-function 'y_ground_truth_-val :lambda-list '(m))
(cl:defmethod y_ground_truth_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:y_ground_truth_-val is deprecated.  Use extendedkalmanfilters-msg:y_ground_truth_ instead.")
  (y_ground_truth_ m))

(cl:ensure-generic-function 'vx_ground_truth_-val :lambda-list '(m))
(cl:defmethod vx_ground_truth_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vx_ground_truth_-val is deprecated.  Use extendedkalmanfilters-msg:vx_ground_truth_ instead.")
  (vx_ground_truth_ m))

(cl:ensure-generic-function 'vy_ground_truth_-val :lambda-list '(m))
(cl:defmethod vy_ground_truth_-val ((m <RadarMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader extendedkalmanfilters-msg:vy_ground_truth_-val is deprecated.  Use extendedkalmanfilters-msg:vy_ground_truth_ instead.")
  (vy_ground_truth_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarMeasurements>) ostream)
  "Serializes a message object of type '<RadarMeasurements>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_type_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_type_))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rho_measured_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi_measured_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rhodot_measured_))))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_ground_truth_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_ground_truth_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx_ground_truth_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy_ground_truth_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarMeasurements>) istream)
  "Deserializes a message object of type '<RadarMeasurements>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_type_) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_type_) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rho_measured_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi_measured_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rhodot_measured_) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'x_ground_truth_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_ground_truth_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx_ground_truth_) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy_ground_truth_) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarMeasurements>)))
  "Returns string type for a message object of type '<RadarMeasurements>"
  "extendedkalmanfilters/RadarMeasurements")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarMeasurements)))
  "Returns string type for a message object of type 'RadarMeasurements"
  "extendedkalmanfilters/RadarMeasurements")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarMeasurements>)))
  "Returns md5sum for a message object of type '<RadarMeasurements>"
  "8cfdab16d9df6f0eace3ca39d1e59ae0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarMeasurements)))
  "Returns md5sum for a message object of type 'RadarMeasurements"
  "8cfdab16d9df6f0eace3ca39d1e59ae0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarMeasurements>)))
  "Returns full string definition for message of type '<RadarMeasurements>"
  (cl:format cl:nil "string sensor_type_~%float32 rho_measured_~%float32 phi_measured_~%float32 rhodot_measured_~%uint64 time_stamp_~%float32 x_ground_truth_~%float32 y_ground_truth_~%float32 vx_ground_truth_~%float32 vy_ground_truth_~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarMeasurements)))
  "Returns full string definition for message of type 'RadarMeasurements"
  (cl:format cl:nil "string sensor_type_~%float32 rho_measured_~%float32 phi_measured_~%float32 rhodot_measured_~%uint64 time_stamp_~%float32 x_ground_truth_~%float32 y_ground_truth_~%float32 vx_ground_truth_~%float32 vy_ground_truth_~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarMeasurements>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_type_))
     4
     4
     4
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarMeasurements>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarMeasurements
    (cl:cons ':sensor_type_ (sensor_type_ msg))
    (cl:cons ':rho_measured_ (rho_measured_ msg))
    (cl:cons ':phi_measured_ (phi_measured_ msg))
    (cl:cons ':rhodot_measured_ (rhodot_measured_ msg))
    (cl:cons ':time_stamp_ (time_stamp_ msg))
    (cl:cons ':x_ground_truth_ (x_ground_truth_ msg))
    (cl:cons ':y_ground_truth_ (y_ground_truth_ msg))
    (cl:cons ':vx_ground_truth_ (vx_ground_truth_ msg))
    (cl:cons ':vy_ground_truth_ (vy_ground_truth_ msg))
))
