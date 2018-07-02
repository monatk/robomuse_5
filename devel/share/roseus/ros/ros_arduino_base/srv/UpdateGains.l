;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_base::UpdateGains)
  (if (not (find-package "ROS_ARDUINO_BASE"))
    (make-package "ROS_ARDUINO_BASE"))
  (shadow 'UpdateGains (find-package "ROS_ARDUINO_BASE")))
(unless (find-package "ROS_ARDUINO_BASE::UPDATEGAINS")
  (make-package "ROS_ARDUINO_BASE::UPDATEGAINS"))
(unless (find-package "ROS_ARDUINO_BASE::UPDATEGAINSREQUEST")
  (make-package "ROS_ARDUINO_BASE::UPDATEGAINSREQUEST"))
(unless (find-package "ROS_ARDUINO_BASE::UPDATEGAINSRESPONSE")
  (make-package "ROS_ARDUINO_BASE::UPDATEGAINSRESPONSE"))

(in-package "ROS")





(defclass ros_arduino_base::UpdateGainsRequest
  :super ros::object
  :slots (_gains ))

(defmethod ros_arduino_base::UpdateGainsRequest
  (:init
   (&key
    ((:gains __gains) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _gains __gains)
   self)
  (:gains
   (&optional __gains)
   (if __gains (setq _gains __gains)) _gains)
  (:serialization-length
   ()
   (+
    ;; float32[6] _gains
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _gains
     (dotimes (i 6)
       (sys::poke (elt _gains i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _gains
   (dotimes (i (length _gains))
     (setf (elt _gains i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass ros_arduino_base::UpdateGainsResponse
  :super ros::object
  :slots ())

(defmethod ros_arduino_base::UpdateGainsResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_arduino_base::UpdateGains
  :super ros::object
  :slots ())

(setf (get ros_arduino_base::UpdateGains :md5sum-) "c27a47d6801c677e4ddacbb17806ce73")
(setf (get ros_arduino_base::UpdateGains :datatype-) "ros_arduino_base/UpdateGains")
(setf (get ros_arduino_base::UpdateGains :request) ros_arduino_base::UpdateGainsRequest)
(setf (get ros_arduino_base::UpdateGains :response) ros_arduino_base::UpdateGainsResponse)

(defmethod ros_arduino_base::UpdateGainsRequest
  (:response () (instance ros_arduino_base::UpdateGainsResponse :init)))

(setf (get ros_arduino_base::UpdateGainsRequest :md5sum-) "c27a47d6801c677e4ddacbb17806ce73")
(setf (get ros_arduino_base::UpdateGainsRequest :datatype-) "ros_arduino_base/UpdateGainsRequest")
(setf (get ros_arduino_base::UpdateGainsRequest :definition-)
      "float32[6] gains
---

")

(setf (get ros_arduino_base::UpdateGainsResponse :md5sum-) "c27a47d6801c677e4ddacbb17806ce73")
(setf (get ros_arduino_base::UpdateGainsResponse :datatype-) "ros_arduino_base/UpdateGainsResponse")
(setf (get ros_arduino_base::UpdateGainsResponse :definition-)
      "float32[6] gains
---

")



(provide :ros_arduino_base/UpdateGains "c27a47d6801c677e4ddacbb17806ce73")


