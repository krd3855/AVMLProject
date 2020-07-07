// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_RADARINPUT_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_RADARINPUT_H_

#include "Input.h"

class RadarInput : public Input {
 private:
    static RadarInput *radarInputptr_;

 protected:
    rosbag::Bag bag_;
    extendedkalmanfilters::RadarMeasurements::ConstPtr radarFrame_;
    std::vector<extendedkalmanfilters::RadarMeasurements::ConstPtr> radarFrames_;
    std::string fileName_;
    std::vector<std::string> topics_{""};
    bool statusFlag_;

 public:
    RadarInput() {};
    void setFileName(const std::string& fname);
    bool open();
    void close();
    void read(const std::string& topicNameInRosBag);
    std::vector<extendedkalmanfilters::RadarMeasurements::ConstPtr>& getData();
    static RadarInput* newinstance();
    ~RadarInput();
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_RADARINPUT_H_
