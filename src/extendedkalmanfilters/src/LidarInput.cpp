// Technische Hochschule Ingolstadt

#include "extendedkalmanfilters/LidarInput.h"

void LidarInput::setFileName(const std::string& fname) {
    fileName_ = fname;
}

LidarInput* LidarInput::lidarInputptr_ = NULL;

bool LidarInput::open() {
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

LidarInput* LidarInput::newinstance() {
    if (lidarInputptr_ == NULL) {
        lidarInputptr_ = new LidarInput;
    }
    return lidarInputptr_;
}

void LidarInput::read(const std::string& topicNameInRosBag) {
    topics_.push_back(topicNameInRosBag);
    rosbag::View view(bag_, rosbag::TopicQuery(topics_));
    for (auto rosBagConstMsg : rosbag::View(bag_)) {
        lidarFrame_  = rosBagConstMsg.instantiate<extendedkalmanfilters::LidarMeasurements>();
        if (lidarFrame_  != NULL) {
            lidarFrames_.push_back(lidarFrame_);
        }
    }
}

std::vector<extendedkalmanfilters::LidarMeasurements::ConstPtr>& LidarInput::getData() {
    return lidarFrames_;
}

void LidarInput::close() {
    bag_.close();
}

LidarInput::~LidarInput() {
    delete(lidarInputptr_);
}
