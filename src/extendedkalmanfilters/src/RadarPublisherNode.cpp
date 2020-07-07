// Technische Hochschule Ingolstadt

#include "extendedkalmanfilters/RadarPublisherNode.h"

RadarPublisherNode::RadarPublisherNode(const std::string& fileName) {
    radarInput_->setFileName(fileName);
    radarPublish_ = radarNode_.advertise<extendedkalmanfilters::RadarMeasurements>(gRadarMsgname, gQueueSize);
}

void RadarPublisherNode::getData() {
    if (radarInput_->open()) {
        radarInput_->read(gRadarTopicname);
        tempRadarData_ = radarInput_->getData();
        radarInput_->close();
    } else {
        std::cout << "Error Opening the Bag file, Killing the Node....." << std::endl;
        ros::shutdown();
    }
}

void RadarPublisherNode::publish() {
    if (radarMsgCounter_ != length()) {
        radarPublish_.publish(tempRadarData_[radarMsgCounter_]);
        nextFrame();
    } else {
        return;
    }
}

int RadarPublisherNode::length() {
    return(tempRadarData_.size());
}

void RadarPublisherNode::nextFrame() {
    radarMsgCounter_++;
}

int main(int argc, char** argv) {
    Ros ros;
    ros.initialize(argc, argv, gRadarPublisherNode);
    RadarPublisherNode radarPublisherNode(gRadarNodeFile);
    radarPublisherNode.getData();
    ros::Rate loop_rate(gPublisherBaudRate);
    while (ros::ok()) {
        radarPublisherNode.publish();
        ros.rate();
        loop_rate.sleep();
    }
    return 0;
}
