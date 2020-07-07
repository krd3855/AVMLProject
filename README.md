# RosExtendedKalmanFileters

NOTE: THIS PROJECT WAS COMPILED ON ROS MELODIC AND UBUNTU 18.04LTS

Please follow these below mentioned setps to run this code,

*  Delete the contents of "ROSBagFiles" folder (it will be automatically populated once you run the code).
*  Perform catkin_make and wait till the completion.
*  Source your code by typing the following command "source devel/setup.bash".
*  Run the rosbag creator code by typing "rosrun extendedkalmanfilters RosBagCreator", you should see the bag files created in the "ROSBagFiles" folder
*  Open the includes folder and find GlobalConsts.h file and find "gLidarNodeFile" and "gRadarNodeFile" variables and put in the absoulte path of the generated bag files and also edit the launch file to provide the absolute path for Rviz.config file inside rviz folder (ROS launch requires absolute path).
*  Perform catkkin_make again to reflect your modificatons.
*  Type in the following command to run the code "roslaunch src/extendedkalmanfilters/launch/SensorFusion.launch" from the base "AvmlEkfWs" folder.
*  You can open another terminal and source your code and echo the published message to look for RMS error getting published.
   For example,
              1. rostopic echo /RMSErrorMsg (you can see the RMS error in real time)
              2. rostopic echo /FusedMsg (you can see the fused data)
              3. rostopic echo /LidarMsg (you can see the publised raw Lidar Data)
              4. rostopic echo /RadarMsg (you can see the publised raw Radar Data)
*  You can find the RQT_Graph of this project inside "RQT_Graphs" folder 


Note: As soon as you launch the code, everyone will be launched automatically and RVIZ should open up soon and you can visulaize the estimation,
      Red line represents the estimated values.
      Green line represents the ground truth values.


Thank you :)
