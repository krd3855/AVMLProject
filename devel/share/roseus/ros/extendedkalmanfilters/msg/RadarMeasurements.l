;; Auto-generated. Do not edit!


(when (boundp 'extendedkalmanfilters::RadarMeasurements)
  (if (not (find-package "EXTENDEDKALMANFILTERS"))
    (make-package "EXTENDEDKALMANFILTERS"))
  (shadow 'RadarMeasurements (find-package "EXTENDEDKALMANFILTERS")))
(unless (find-package "EXTENDEDKALMANFILTERS::RADARMEASUREMENTS")
  (make-package "EXTENDEDKALMANFILTERS::RADARMEASUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude RadarMeasurements.msg.html


(defclass extendedkalmanfilters::RadarMeasurements
  :super ros::object
  :slots (_sensor_type_ _rho_measured_ _phi_measured_ _rhodot_measured_ _time_stamp_ _x_ground_truth_ _y_ground_truth_ _vx_ground_truth_ _vy_ground_truth_ ))

(defmethod extendedkalmanfilters::RadarMeasurements
  (:init
   (&key
    ((:sensor_type_ __sensor_type_) "")
    ((:rho_measured_ __rho_measured_) 0.0)
    ((:phi_measured_ __phi_measured_) 0.0)
    ((:rhodot_measured_ __rhodot_measured_) 0.0)
    ((:time_stamp_ __time_stamp_) 0)
    ((:x_ground_truth_ __x_ground_truth_) 0.0)
    ((:y_ground_truth_ __y_ground_truth_) 0.0)
    ((:vx_ground_truth_ __vx_ground_truth_) 0.0)
    ((:vy_ground_truth_ __vy_ground_truth_) 0.0)
    )
   (send-super :init)
   (setq _sensor_type_ (string __sensor_type_))
   (setq _rho_measured_ (float __rho_measured_))
   (setq _phi_measured_ (float __phi_measured_))
   (setq _rhodot_measured_ (float __rhodot_measured_))
   (setq _time_stamp_ (round __time_stamp_))
   (setq _x_ground_truth_ (float __x_ground_truth_))
   (setq _y_ground_truth_ (float __y_ground_truth_))
   (setq _vx_ground_truth_ (float __vx_ground_truth_))
   (setq _vy_ground_truth_ (float __vy_ground_truth_))
   self)
  (:sensor_type_
   (&optional __sensor_type_)
   (if __sensor_type_ (setq _sensor_type_ __sensor_type_)) _sensor_type_)
  (:rho_measured_
   (&optional __rho_measured_)
   (if __rho_measured_ (setq _rho_measured_ __rho_measured_)) _rho_measured_)
  (:phi_measured_
   (&optional __phi_measured_)
   (if __phi_measured_ (setq _phi_measured_ __phi_measured_)) _phi_measured_)
  (:rhodot_measured_
   (&optional __rhodot_measured_)
   (if __rhodot_measured_ (setq _rhodot_measured_ __rhodot_measured_)) _rhodot_measured_)
  (:time_stamp_
   (&optional __time_stamp_)
   (if __time_stamp_ (setq _time_stamp_ __time_stamp_)) _time_stamp_)
  (:x_ground_truth_
   (&optional __x_ground_truth_)
   (if __x_ground_truth_ (setq _x_ground_truth_ __x_ground_truth_)) _x_ground_truth_)
  (:y_ground_truth_
   (&optional __y_ground_truth_)
   (if __y_ground_truth_ (setq _y_ground_truth_ __y_ground_truth_)) _y_ground_truth_)
  (:vx_ground_truth_
   (&optional __vx_ground_truth_)
   (if __vx_ground_truth_ (setq _vx_ground_truth_ __vx_ground_truth_)) _vx_ground_truth_)
  (:vy_ground_truth_
   (&optional __vy_ground_truth_)
   (if __vy_ground_truth_ (setq _vy_ground_truth_ __vy_ground_truth_)) _vy_ground_truth_)
  (:serialization-length
   ()
   (+
    ;; string _sensor_type_
    4 (length _sensor_type_)
    ;; float32 _rho_measured_
    4
    ;; float32 _phi_measured_
    4
    ;; float32 _rhodot_measured_
    4
    ;; uint64 _time_stamp_
    8
    ;; float32 _x_ground_truth_
    4
    ;; float32 _y_ground_truth_
    4
    ;; float32 _vx_ground_truth_
    4
    ;; float32 _vy_ground_truth_
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_type_
       (write-long (length _sensor_type_) s) (princ _sensor_type_ s)
     ;; float32 _rho_measured_
       (sys::poke _rho_measured_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi_measured_
       (sys::poke _phi_measured_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rhodot_measured_
       (sys::poke _rhodot_measured_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _time_stamp_
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_stamp_ (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_stamp_) (= (length (_time_stamp_ . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_stamp_ . bv) 0) 0) s)
              (write-long (ash (elt (_time_stamp_ . bv) 1) -1) s))
             ((and (class _time_stamp_) (= (length (_time_stamp_ . bv)) 1)) ;; big1
              (write-long (elt (_time_stamp_ . bv) 0) s)
              (write-long (if (>= _time_stamp_ 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_stamp_ s)(write-long (if (>= _time_stamp_ 0) 0 #xffffffff) s)))
     ;; float32 _x_ground_truth_
       (sys::poke _x_ground_truth_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_ground_truth_
       (sys::poke _y_ground_truth_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx_ground_truth_
       (sys::poke _vx_ground_truth_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy_ground_truth_
       (sys::poke _vy_ground_truth_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_type_
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_type_ (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _rho_measured_
     (setq _rho_measured_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi_measured_
     (setq _phi_measured_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rhodot_measured_
     (setq _rhodot_measured_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _time_stamp_
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_stamp_ (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_stamp_ (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _x_ground_truth_
     (setq _x_ground_truth_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_ground_truth_
     (setq _y_ground_truth_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx_ground_truth_
     (setq _vx_ground_truth_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy_ground_truth_
     (setq _vy_ground_truth_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get extendedkalmanfilters::RadarMeasurements :md5sum-) "8cfdab16d9df6f0eace3ca39d1e59ae0")
(setf (get extendedkalmanfilters::RadarMeasurements :datatype-) "extendedkalmanfilters/RadarMeasurements")
(setf (get extendedkalmanfilters::RadarMeasurements :definition-)
      "string sensor_type_
float32 rho_measured_
float32 phi_measured_
float32 rhodot_measured_
uint64 time_stamp_
float32 x_ground_truth_
float32 y_ground_truth_
float32 vx_ground_truth_
float32 vy_ground_truth_
")



(provide :extendedkalmanfilters/RadarMeasurements "8cfdab16d9df6f0eace3ca39d1e59ae0")


