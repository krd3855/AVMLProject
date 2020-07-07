// Technische Hochschule Ingolstadt

#include "extendedkalmanfilters/FusionNode.h"

FusionNode::FusionNode() {
   fusionPublish_ = fusionNode_.advertise<extendedkalmanfilters::FusedMesurements>(gFusionMsgname, gQueueSize);
}

void FusionNode::subscribe() {
    lidarSubscribe_ = node_.subscribe(gLidarMsgname, gQueueSize, &FusionNode::lidarCallback, this);
    radarSubscribe_ = node_.subscribe(gRadarMsgname, gQueueSize, &FusionNode::radarCallback, this);
}

void FusionNode::lidarCallback(const extendedkalmanfilters::LidarMeasurements::ConstPtr& lidarMsg) {
    helperObject_.sensorType_ = Helper::LASER;
    helperObject_.rawMeasurements_ = VectorXd(2);
    helperObject_.rawMeasurements_ << lidarMsg->x_measured_, lidarMsg->y_measured_;
    helperObject_.timeStamp_ = lidarMsg->time_stamp_;
    xGt_ = lidarMsg->x_ground_truth_;
    yGt_ = lidarMsg->y_ground_truth_;
    VxGt_ = lidarMsg->vx_ground_truth_;
    VyGt_ = lidarMsg->vy_ground_truth_;
    fuse();
}

void FusionNode::fuse() {
    extendedKF_.processMeasurement(helperObject_);
    fusedFrame_.x_estimated_ = extendedKF_.kf_.X_(0);
    fusedFrame_.y_estimated_ = extendedKF_.kf_.X_(1);
    fusedFrame_.time_stamp_ = helperObject_.timeStamp_;
    fusedFrame_.vx_estimated_ = extendedKF_.kf_.X_(2);
    fusedFrame_.vy_estimated_ = extendedKF_.kf_.X_(3);
    fusedFrame_.x_gt_ = xGt_;
    fusedFrame_.y_gt_ = yGt_;
    fusedFrame_.vx_gt_ = VxGt_;
    fusedFrame_.vy_gt_ = VyGt_;
    publish();
}

void FusionNode::publish() {
    fusionPublish_.publish(fusedFrame_);
}


void FusionNode::radarCallback(const extendedkalmanfilters::RadarMeasurements::ConstPtr& radarMsg) {
    helperObject_.sensorType_ = Helper::RADAR;
    helperObject_.rawMeasurements_ = VectorXd(3);
    helperObject_.rawMeasurements_ << radarMsg->rho_measured_, radarMsg->phi_measured_, radarMsg->rhodot_measured_;
    helperObject_.timeStamp_ = radarMsg->time_stamp_;
    xGt_ = radarMsg->x_ground_truth_;
    yGt_ = radarMsg->y_ground_truth_;
    VxGt_ = radarMsg->vx_ground_truth_;
    VyGt_ = radarMsg->vy_ground_truth_;
    fuse();
}

int main(int argc, char** argv) {
    Ros ros;
    ros.initialize(argc, argv, gFusionNode);
    FusionNode fusionNode;
    fusionNode.subscribe();
    ros.spin();
    return 0;
}
