// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_EXTENDEDKKF_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_EXTENDEDKKF_H_

#include <string>
#include <iostream>
#include "Eigen/Dense"
#include "KalmanFilter.h"
#include "Helper.h"

using Eigen::MatrixXd;
using Eigen::VectorXd;

class ExtendedKF {
 public:
  Helper helper_;
  Eigen::MatrixXd R_laser_;
  Eigen::MatrixXd R_radar_;
  Eigen::MatrixXd H_laser_;
  Eigen::MatrixXd Hj_;
  KalmanFilter kf_;

private:
  bool isInitialized_;
  long long previousTimestamp_;

public:
  ExtendedKF();
  void processMeasurement(const Helper &helperObject);
  virtual ~ExtendedKF() {};
 
};

#endif // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_EXTENDEDKKF_H_
