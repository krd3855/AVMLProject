#include "extendedkalmanfilters/KalmanFilter.h"
#include <iostream>

using Eigen::MatrixXd;
using Eigen::VectorXd;


void KalmanFilter::initialize(VectorXd &Xin, MatrixXd &Pin, MatrixXd &Fin,
                        MatrixXd &Hin, MatrixXd &RIn,MatrixXd &Rradar, MatrixXd &Qin) {
  X_ = Xin;
  P_ = Pin;
  F_ = Fin;
  H_ = Hin;
  R_ = RIn;
  R_radar_ = Rradar;
  Q_ = Qin;
  std::cout << Fin << std::endl;
  std::cout << F_ << std::endl;
}

void KalmanFilter::predict() {
  X_ = F_ * X_;
  MatrixXd Ft = F_.transpose();
  P_ = F_ * P_ * Ft + Q_;
}

void KalmanFilter::update(const VectorXd &Z) {
  VectorXd Zpred = H_ * X_;
  VectorXd Y = Z - Zpred;
  MatrixXd Ht = H_.transpose();
  MatrixXd S = H_ * P_ * Ht + R_;
  MatrixXd Si = S.inverse();
  MatrixXd PHt = P_ * Ht;
  MatrixXd K = PHt * Si;
  X_ = X_ + (K * Y);
  MatrixXd I = MatrixXd::Identity( X_.size(),  X_.size());
  P_ = (I - K * H_) * P_;
}

void KalmanFilter::updateEKF(const VectorXd &Z,const MatrixXd &Hj) {
  float rho = sqrt(X_(0) * X_(0) + X_(1) * X_(1));
  float phi = atan2(X_(1), X_(0));
  float rho_dot;
  if (fabs(rho) < 0.0001) {                            // Checking for division by Zero (Issue Fixed)
    rho_dot = 0;
  } else {
    rho_dot = (X_(0)*X_(2) + X_(1)*X_(3))/rho;
  }
  VectorXd Zpred(3);
  Zpred << rho, phi, rho_dot;
  VectorXd Y = Z - Zpred;
  while ( Y(1) > M_PI || Y(1) < -M_PI ) {              // Limits Verification
    if ( Y(1) > M_PI ) {
      Y(1) -= 2*M_PI;
    } else {
      Y(1) += 2*M_PI;
    }
  }
  MatrixXd S = Hj*P_*Hj.transpose() + R_radar_;
  MatrixXd K = P_*Hj.transpose()*S.inverse();
  MatrixXd I = MatrixXd::Identity(4, 4);
  X_ = X_ + (K * Y);
  P_ = (I - K * Hj) * P_;
}
