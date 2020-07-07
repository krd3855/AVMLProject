// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_LiDARPublisherNode_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_LiDARPublisherNode_H_


#include "Node.h"

class LidarPublisherNode : public Node {
 private:
    std::vector<extendedkalmanfilters::LidarMeasurements::ConstPtr> tempLidarData_;
    int lidarMsgCounter_{0};

 public:
    LidarPublisherNode() {}
    explicit LidarPublisherNode(const std::string& fileName);
    void getData();
    void publish();
    void nextFrame();
    int length();
    void close();
    ~LidarPublisherNode(){}
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_LiDARPublisherNode_H_
