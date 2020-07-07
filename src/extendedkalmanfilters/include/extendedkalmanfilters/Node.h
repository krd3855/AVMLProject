// Technische Hochschule Ingolstadt

#ifndef CAMRARFUSION_SRC_ROSBAG_CREATION_INCLUDE_ROSBAG_CREATION_NODE_H_
#define CAMRARFUSION_SRC_ROSBAG_CREATION_INCLUDE_ROSBAG_CREATION_NODE_H_


#include <visualization_msgs/Marker.h>
#include <Eigen/Eigen>
#include "GlobalConsts.h"
#include "Ros.h"
#include "LidarInput.h"
#include "RadarInput.h"
#include "extendedkalmanfilters/RMSError.h"
#include "extendedkalmanfilters/LidarMeasurements.h"
#include "extendedkalmanfilters/RadarMeasurements.h"


class Node {
 public:
    LidarInput *lidarInput_{nullptr};    // Singleton Objects
    RadarInput *radarInput_{nullptr};

 protected:
     ros::NodeHandle lidarNode_;
    ros::NodeHandle radarNode_;
    ros::NodeHandle fusionNode_;
    ros::NodeHandle outputNode_;
    ros::Publisher radarPublish_;
    ros::Publisher lidarPublish_;
    ros::Publisher fusionPublish_;
    ros::Publisher rmsErrPublish_;
    ros::Subscriber subscribe_;
    std::vector<std::string> topics_{""};

 public:
    Node() {
        lidarInput_ = LidarInput::newinstance();   // instantiation of pointers 
        radarInput_ = RadarInput::newinstance();
    }
    virtual void getData() {};
    virtual void publish() {};
    virtual void subscribe() {};
    virtual int length() {return 0;};
    virtual void nextFrame() {};
    virtual ~Node() {delete(lidarInput_); delete(radarInput_);}; // deletion of pointers
};

#endif  // CAMRARFUSION_SRC_ROSBAG_CREATION_INCLUDE_ROSBAG_CREATION_NODE_H_
