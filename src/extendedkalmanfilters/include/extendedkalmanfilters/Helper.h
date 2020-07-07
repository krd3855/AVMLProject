// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_HELPER_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_HELPER_H_

#include <vector>
#include <iostream>
#include <cmath>
#include "Eigen/Dense"

using Eigen::VectorXd;
using Eigen::MatrixXd;
using std::vector;

class Helper {
 public:
    enum SensorType{
        LASER,
        RADAR
  } sensorType_;
  long long timeStamp_;
  Eigen::VectorXd rawMeasurements_;
public:
  Helper() {};
  Eigen::VectorXd calculateRMSE(const std::vector<Eigen::VectorXd> &estimations, 
                                const std::vector<Eigen::VectorXd> &groundTruth);
  Eigen::MatrixXd calculateJacobian(const Eigen::VectorXd& x_state);
 virtual ~Helper() {};
};

#endif  // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_HELPER_H_
