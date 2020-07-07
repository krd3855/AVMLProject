// Technische Hochschule Ingolstadt

#ifndef AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_KALMAN_FILTER_H_
#define AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_KALMAN_FILTER_H_

#include "Eigen/Dense"

class KalmanFilter {
 public:
    // state vector
  Eigen::VectorXd X_;
  // state covariance matrix
  Eigen::MatrixXd P_;
  // state transition matrix
  Eigen::MatrixXd F_;
  // process covariance matrix
  Eigen::MatrixXd Q_;
  // measurement matrix
  Eigen::MatrixXd H_;
  // measurement covariance matrix
  Eigen::MatrixXd R_;
  Eigen::MatrixXd R_radar_;

public:
  KalmanFilter() {};
  void initialize(Eigen::VectorXd &x_in, Eigen::MatrixXd &P_in, Eigen::MatrixXd &F_in,
            Eigen::MatrixXd &H_in, Eigen::MatrixXd &R_in,Eigen::MatrixXd &R_rad_, Eigen::MatrixXd &Q_in);
  void predict();
  void update(const Eigen::VectorXd &Z);
  void updateEKF(const Eigen::VectorXd &Z,const Eigen::MatrixXd &Hj);
  virtual ~KalmanFilter() {};
};

#endif // AVML_SRC_EXTENDEDKALMANFILTERS_INCLUDE_EXTENDEDKALMANFILTERS_KALMAN_FILTER_H_
