// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_FUSIONNODE_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_FUSIONNODE_H_

#include <string>
#include <Eigen/Eigen>
#include "Node.h"
#include "ExtendedKF.h"
#include "GlobalConsts.h"
#include "Ros.h"
#include "Helper.h"

using Eigen::MatrixXd;
using Eigen::VectorXd;

class FusionNode : public Node {
 private:
    ros::NodeHandle node_;
    ros::Subscriber radarSubscribe_;
    ros::Subscriber lidarSubscribe_;
    double xGt_, yGt_, VxGt_, VyGt_;
    ExtendedKF extendedKF_;
    Helper helperObject_;
    extendedkalmanfilters::FusedMesurements fusedFrame_;

 public:
    FusionNode();
    void subscribe();
    void publish();
    void fuse();
    void lidarCallback(const extendedkalmanfilters::LidarMeasurements::ConstPtr& lidaraMsg);
    void radarCallback(const extendedkalmanfilters::RadarMeasurements::ConstPtr& radarMsg);
    ~FusionNode() {}
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_FUSIONNODE_H_
