// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_OUTPUTNODE_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_OUTPUTNODE_H_


#include "Node.h"
#include "Helper.h"

using Eigen::MatrixXd;
using Eigen::VectorXd;

class OutputNode : public Node {
 private:
    ros::NodeHandle node_;
    ros::Publisher markerPublish;
    ros::Subscriber fusionSubscribe_;
    vector<VectorXd> estValues_;
    geometry_msgs::Point gtP_,estP_;
    visualization_msgs::Marker gtPoint_,estPoint_;
    vector<VectorXd> gtValues_;
    VectorXd rmsErValues_;
    Helper helper_;
    extendedkalmanfilters::RMSError RMSError_;

 public:
    OutputNode();
    void subscribe();
    void publish();
    void visualize(VectorXd& estValue,VectorXd& gtValue);
    void rmsCalulate();
    void fusionCallback(const extendedkalmanfilters::FusedMesurements::ConstPtr& fusedMsg);
    ~OutputNode() {}
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_OUTPUTNODE_H_
