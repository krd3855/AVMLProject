;; Auto-generated. Do not edit!


(when (boundp 'extendedkalmanfilters::RMSError)
  (if (not (find-package "EXTENDEDKALMANFILTERS"))
    (make-package "EXTENDEDKALMANFILTERS"))
  (shadow 'RMSError (find-package "EXTENDEDKALMANFILTERS")))
(unless (find-package "EXTENDEDKALMANFILTERS::RMSERROR")
  (make-package "EXTENDEDKALMANFILTERS::RMSERROR"))

(in-package "ROS")
;;//! \htmlinclude RMSError.msg.html


(defclass extendedkalmanfilters::RMSError
  :super ros::object
  :slots (_x_err_ _y_err_ _vx_err_ _vy_err_ ))

(defmethod extendedkalmanfilters::RMSError
  (:init
   (&key
    ((:x_err_ __x_err_) 0.0)
    ((:y_err_ __y_err_) 0.0)
    ((:vx_err_ __vx_err_) 0.0)
    ((:vy_err_ __vy_err_) 0.0)
    )
   (send-super :init)
   (setq _x_err_ (float __x_err_))
   (setq _y_err_ (float __y_err_))
   (setq _vx_err_ (float __vx_err_))
   (setq _vy_err_ (float __vy_err_))
   self)
  (:x_err_
   (&optional __x_err_)
   (if __x_err_ (setq _x_err_ __x_err_)) _x_err_)
  (:y_err_
   (&optional __y_err_)
   (if __y_err_ (setq _y_err_ __y_err_)) _y_err_)
  (:vx_err_
   (&optional __vx_err_)
   (if __vx_err_ (setq _vx_err_ __vx_err_)) _vx_err_)
  (:vy_err_
   (&optional __vy_err_)
   (if __vy_err_ (setq _vy_err_ __vy_err_)) _vy_err_)
  (:serialization-length
   ()
   (+
    ;; float64 _x_err_
    8
    ;; float64 _y_err_
    8
    ;; float64 _vx_err_
    8
    ;; float64 _vy_err_
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_err_
       (sys::poke _x_err_ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_err_
       (sys::poke _y_err_ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx_err_
       (sys::poke _vx_err_ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy_err_
       (sys::poke _vy_err_ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_err_
     (setq _x_err_ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_err_
     (setq _y_err_ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx_err_
     (setq _vx_err_ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy_err_
     (setq _vy_err_ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get extendedkalmanfilters::RMSError :md5sum-) "80ba0cfe9e605460189c638c99edde45")
(setf (get extendedkalmanfilters::RMSError :datatype-) "extendedkalmanfilters/RMSError")
(setf (get extendedkalmanfilters::RMSError :definition-)
      "float64 x_err_
float64 y_err_
float64 vx_err_
float64 vy_err_
")



(provide :extendedkalmanfilters/RMSError "80ba0cfe9e605460189c638c99edde45")


