;; Auto-generated. Do not edit!


(when (boundp 'tm_motion::ActionGoal)
  (if (not (find-package "TM_MOTION"))
    (make-package "TM_MOTION"))
  (shadow 'ActionGoal (find-package "TM_MOTION")))
(unless (find-package "TM_MOTION::ACTIONGOAL")
  (make-package "TM_MOTION::ACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude ActionGoal.msg.html


(defclass tm_motion::ActionGoal
  :super ros::object
  :slots (_goal_goal ))

(defmethod tm_motion::ActionGoal
  (:init
   (&key
    ((:goal_goal __goal_goal) "")
    )
   (send-super :init)
   (setq _goal_goal (string __goal_goal))
   self)
  (:goal_goal
   (&optional __goal_goal)
   (if __goal_goal (setq _goal_goal __goal_goal)) _goal_goal)
  (:serialization-length
   ()
   (+
    ;; string _goal_goal
    4 (length _goal_goal)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _goal_goal
       (write-long (length _goal_goal) s) (princ _goal_goal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _goal_goal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_goal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tm_motion::ActionGoal :md5sum-) "db36ba6c2d7075135f6f5a5977ce9d12")
(setf (get tm_motion::ActionGoal :datatype-) "tm_motion/ActionGoal")
(setf (get tm_motion::ActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
string goal_goal


")



(provide :tm_motion/ActionGoal "db36ba6c2d7075135f6f5a5977ce9d12")

