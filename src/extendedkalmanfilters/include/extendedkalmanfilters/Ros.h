// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_ROS_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_ROS_H_

#include <string>
#include "GlobalConsts.h"
#include "ros/ros.h"

class Ros {
 public:
    void initialize(int argc, char** argv, const std::string nodename);
    void spin();
    void rate();
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_ROS_H_
