
(cl:in-package :asdf)

(defsystem "extendedkalmanfilters-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FusedMesurements" :depends-on ("_package_FusedMesurements"))
    (:file "_package_FusedMesurements" :depends-on ("_package"))
    (:file "LidarMeasurements" :depends-on ("_package_LidarMeasurements"))
    (:file "_package_LidarMeasurements" :depends-on ("_package"))
    (:file "RMSError" :depends-on ("_package_RMSError"))
    (:file "_package_RMSError" :depends-on ("_package"))
    (:file "RadarMeasurements" :depends-on ("_package_RadarMeasurements"))
    (:file "_package_RadarMeasurements" :depends-on ("_package"))
  ))