// Technische Hochschule Ingolstadt

#include "extendedkalmanfilters/Ros.h"

void Ros::initialize(int argc, char** argv, const std::string nodename) {
    ros::init(argc, argv, nodename);
}

void Ros::spin() {
    ros::spin();
}

void Ros::rate() {
    ros::spinOnce();
}
