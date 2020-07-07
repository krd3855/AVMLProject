// Technische Hochschule Ingolstadt

#include "extendedkalmanfilters/RadarInput.h"

void RadarInput::setFileName(const std::string& fname) {
    fileName_ = fname;
}

RadarInput* RadarInput::radarInputptr_ = NULL;

bool RadarInput::open() {
    try {
        bag_.open(fileName_, rosbag::bagmode::Read);
        statusFlag_ = true;
    }
    catch(rosbag::BagIOException& errMsg) {
        ROS_INFO("Error is :  [%s]", errMsg.what());
        statusFlag_ = false;
    }
    return statusFlag_;
}

RadarInput* RadarInput::newinstance() {
    if (radarInputptr_ == NULL) {
        radarInputptr_ = new RadarInput;
    }
    return radarInputptr_;
}

void RadarInput::read(const std::string& topicNameInRosBag) {
    topics_.push_back(topicNameInRosBag);
    rosbag::View view(bag_, rosbag::TopicQuery(topics_));
    for (auto rosBagConstMsg : rosbag::View(bag_)) {
        radarFrame_  = rosBagConstMsg.instantiate<extendedkalmanfilters::RadarMeasurements>();
        if (radarFrame_  != NULL) {
            radarFrames_.push_back(radarFrame_);
        }
    }
}

std::vector<extendedkalmanfilters::RadarMeasurements::ConstPtr>& RadarInput::getData() {
    return radarFrames_;
}

void RadarInput::close() {
  bag_.close();
}

RadarInput::~RadarInput() {
    delete(radarInputptr_);
}
