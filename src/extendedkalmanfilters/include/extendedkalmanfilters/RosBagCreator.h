// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_ROSBAGCREATOR_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_ROSBAGCREATOR_H_

#include "BagCreator.h"
#include "Ros.h"
#include "extendedkalmanfilters/RadarMeasurements.h"
#include "extendedkalmanfilters/LidarMeasurements.h"

class RosBagCreator : public BagCreator {
 public:
 	extendedkalmanfilters::RadarMeasurements radarMeasurement_;
    extendedkalmanfilters::LidarMeasurements lidarMeasurement_;

public:
    RosBagCreator();
    void read();
    void lidarWrite(std::string& sensorType, float xMeasured, float yMeasured, long long timeStamp, float xGt, float yGt, float vxGt, float vyGt);
    void radarWrite(std::string& sensorType, float rho, float phi, float rhodot, long long timeStamp, float xGt, float yGt, float vxGt, float vyGt);
    void close();
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_ROSBAGCREATOR_H_
