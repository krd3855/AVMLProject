// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_BAGCREATOR_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_BAGCREATOR_H_

#include "GlobalConsts.h"

class BagCreator {
 public:
  ros::NodeHandle radarNode_;
  ros::NodeHandle lidarNode_;
  ros::Publisher radarPublish_;
  ros::Publisher lidarPublish_;
 public:
    BagCreator() {}
    virtual void close() {};
    virtual void radarWrite() {};
    virtual void lidarWrite() {};
    virtual ~BagCreator() {}
};
#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_BAGCREATOR_H_
