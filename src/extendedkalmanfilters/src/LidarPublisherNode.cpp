#include "extendedkalmanfilters/LidarPublisherNode.h"

LidarPublisherNode::LidarPublisherNode(const std::string& fileName) {
    lidarInput_->setFileName(fileName);
    lidarPublish_ = lidarNode_.advertise<extendedkalmanfilters::LidarMeasurements>(gLidarMsgname, gQueueSize);
}

void LidarPublisherNode::getData() {
    if (lidarInput_->open()) {
        lidarInput_->read(gRadarTopicname);
        tempLidarData_ = lidarInput_->getData();
        lidarInput_->close();
    } else {
        std::cout << "Error Opening the Bag file, Killing the Node....." << std::endl;
        ros::shutdown();
    }
}

void LidarPublisherNode::publish() {
    if (lidarMsgCounter_ != length()) {
        lidarPublish_.publish(tempLidarData_[lidarMsgCounter_]);
        nextFrame();
    } else {
        return;
    }
}


int LidarPublisherNode::length() {
    return(tempLidarData_.size());
}

void LidarPublisherNode::nextFrame() {
    lidarMsgCounter_++;
}

int main(int argc, char** argv) {
    Ros ros;
    ros.initialize(argc, argv, gLidarPublisherNode);
    LidarPublisherNode lidarPublisherNode(gLidarNodeFile);
    lidarPublisherNode.getData();
    ros::Rate loop_rate(gPublisherBaudRate);
    while (ros::ok()) {
        lidarPublisherNode.publish();
        ros.rate();
        loop_rate.sleep();
    }
    return 0;
}
