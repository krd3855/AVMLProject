// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_RADARPUBLISHERNODE_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_RADARPUBLISHERNODE_H_


#include "Node.h"

class RadarPublisherNode : public Node {
 private:
    std::vector<extendedkalmanfilters::RadarMeasurements::ConstPtr> tempRadarData_;
    int radarMsgCounter_{0};
 public:
    explicit RadarPublisherNode(const std::string& fileName);
    void getData();
    void publish();
    int length();
    void nextFrame();
    ~RadarPublisherNode(){}
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_RADARPUBLISHERNODE_H_
