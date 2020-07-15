;; Auto-generated. Do not edit!


(when (boundp 'extendedkalmanfilters::FusedMesurements)
  (if (not (find-package "EXTENDEDKALMANFILTERS"))
    (make-package "EXTENDEDKALMANFILTERS"))
  (shadow 'FusedMesurements (find-package "EXTENDEDKALMANFILTERS")))
(unless (find-package "EXTENDEDKALMANFILTERS::FUSEDMESUREMENTS")
  (make-package "EXTENDEDKALMANFILTERS::FUSEDMESUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude FusedMesurements.msg.html


(defclass extendedkalmanfilters::FusedMesurements
  :super ros::object
  :slots (_x_estimated_ _y_estimated_ _time_stamp_ _vx_estimated_ _vy_estimated_ _x_gt_ _y_gt_ _vx_gt_ _vy_gt_ ))

(defmethod extendedkalmanfilters::FusedMesurements
  (:init
   (&key
    ((:x_estimated_ __x_estimated_) 0.0)
    ((:y_estimated_ __y_estimated_) 0.0)
    ((:time_stamp_ __time_stamp_) 0)
    ((:vx_estimated_ __vx_estimated_) 0.0)
    ((:vy_estimated_ __vy_estimated_) 0.0)
    ((:x_gt_ __x_gt_) 0.0)
    ((:y_gt_ __y_gt_) 0.0)
    ((:vx_gt_ __vx_gt_) 0.0)
    ((:vy_gt_ __vy_gt_) 0.0)
    )
   (send-super :init)
   (setq _x_estimated_ (float __x_estimated_))
   (setq _y_estimated_ (float __y_estimated_))
   (setq _time_stamp_ (round __time_stamp_))
   (setq _vx_estimated_ (float __vx_estimated_))
   (setq _vy_estimated_ (float __vy_estimated_))
   (setq _x_gt_ (float __x_gt_))
   (setq _y_gt_ (float __y_gt_))
   (setq _vx_gt_ (float __vx_gt_))
   (setq _vy_gt_ (float __vy_gt_))
   self)
  (:x_estimated_
   (&optional __x_estimated_)
   (if __x_estimated_ (setq _x_estimated_ __x_estimated_)) _x_estimated_)
  (:y_estimated_
   (&optional __y_estimated_)
   (if __y_estimated_ (setq _y_estimated_ __y_estimated_)) _y_estimated_)
  (:time_stamp_
   (&optional __time_stamp_)
   (if __time_stamp_ (setq _time_stamp_ __time_stamp_)) _time_stamp_)
  (:vx_estimated_
   (&optional __vx_estimated_)
   (if __vx_estimated_ (setq _vx_estimated_ __vx_estimated_)) _vx_estimated_)
  (:vy_estimated_
   (&optional __vy_estimated_)
   (if __vy_estimated_ (setq _vy_estimated_ __vy_estimated_)) _vy_estimated_)
  (:x_gt_
   (&optional __x_gt_)
   (if __x_gt_ (setq _x_gt_ __x_gt_)) _x_gt_)
  (:y_gt_
   (&optional __y_gt_)
   (if __y_gt_ (setq _y_gt_ __y_gt_)) _y_gt_)
  (:vx_gt_
   (&optional __vx_gt_)
   (if __vx_gt_ (setq _vx_gt_ __vx_gt_)) _vx_gt_)
  (:vy_gt_
   (&optional __vy_gt_)
   (if __vy_gt_ (setq _vy_gt_ __vy_gt_)) _vy_gt_)
  (:serialization-length
   ()
   (+
    ;; float32 _x_estimated_
    4
    ;; float32 _y_estimated_
    4
    ;; uint64 _time_stamp_
    8
    ;; float32 _vx_estimated_
    4
    ;; float32 _vy_estimated_
    4
    ;; float32 _x_gt_
    4
    ;; float32 _y_gt_
    4
    ;; float32 _vx_gt_
    4
    ;; float32 _vy_gt_
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x_estimated_
       (sys::poke _x_estimated_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_estimated_
       (sys::poke _y_estimated_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; float32 _vx_estimated_
       (sys::poke _vx_estimated_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy_estimated_
       (sys::poke _vy_estimated_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_gt_
       (sys::poke _x_gt_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_gt_
       (sys::poke _y_gt_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx_gt_
       (sys::poke _vx_gt_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy_gt_
       (sys::poke _vy_gt_ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x_estimated_
     (setq _x_estimated_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_estimated_
     (setq _y_estimated_ (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; float32 _vx_estimated_
     (setq _vx_estimated_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy_estimated_
     (setq _vy_estimated_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_gt_
     (setq _x_gt_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_gt_
     (setq _y_gt_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx_gt_
     (setq _vx_gt_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy_gt_
     (setq _vy_gt_ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get extendedkalmanfilters::FusedMesurements :md5sum-) "78dd8106ff3952f3bd4013441cdc9454")
(setf (get extendedkalmanfilters::FusedMesurements :datatype-) "extendedkalmanfilters/FusedMesurements")
(setf (get extendedkalmanfilters::FusedMesurements :definition-)
      "float32 x_estimated_
float32 y_estimated_
uint64 time_stamp_
float32 vx_estimated_
float32 vy_estimated_
float32 x_gt_
float32 y_gt_
float32 vx_gt_
float32 vy_gt_

")



(provide :extendedkalmanfilters/FusedMesurements "78dd8106ff3952f3bd4013441cdc9454")


