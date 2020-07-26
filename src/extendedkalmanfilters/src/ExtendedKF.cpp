#include "extendedkalmanfilters/ExtendedKF.h"

ExtendedKF::ExtendedKF() {
  isInitialized_ = false;
  previousTimestamp_ = 0;                            // Delta T
  R_laser_ = MatrixXd(2, 2);
  R_radar_ = MatrixXd(3, 3);
  H_laser_ = MatrixXd(2, 4);
  Hj_ = MatrixXd(3, 4);
  
  R_laser_ << 0.0255, 0,
              0, 0.0255;

  R_radar_ << 0.09, 0, 0,                             //Trail number - 15
              0, 0.0009, 0,
              0, 0, 0.09;

   H_laser_ << 1, 0, 0, 0,
               0, 1, 0, 0;
}

void ExtendedKF::processMeasurement(const Helper& helperObject) {
  if (!isInitialized_) {                            // Initiatization of KF equations
    kf_.X_ = VectorXd(4);
    kf_.X_ << 1, 1, 1, 1;
    MatrixXd PCovar = MatrixXd(4,4);
  	PCovar << 1,0,0,0,
  			    0,1,0,0,
  			    0,0,1000,0,
  			    0,0,0,1000;
  	MatrixXd F_in = MatrixXd(4,4);
    
    MatrixXd Q_in = MatrixXd(4, 4);
    if (helperObject.sensorType_ == Helper::RADAR) {                            // Checking for Sensor Type
      VectorXd xIn = kf_.X_;
      float rho = helperObject.rawMeasurements_(0);
      float phi = helperObject.rawMeasurements_(1);
      float rhoDot = helperObject.rawMeasurements_(2);
      xIn(0) = rho * cos(phi);
      xIn(1) = rho * sin(phi);      
      xIn(2) = rhoDot * cos(phi);
      xIn(3) = rhoDot * sin(phi);
      kf_.initialize(xIn, PCovar, F_in, H_laser_, R_laser_, R_radar_, Q_in);
      std::cout << "Initializing with RADAR measurements" << std::endl;
    } else if (helperObject.sensorType_ == Helper::LASER) {
      VectorXd xIn = kf_.X_;
      xIn(0) = helperObject.rawMeasurements_(0);
      xIn(1) = helperObject.rawMeasurements_(1);
      kf_.initialize(xIn, PCovar, F_in, H_laser_, R_laser_, R_radar_, Q_in);
      std::cout << "Initializing with LiDAR measurements" << std::endl;
    }
    isInitialized_ = true;
    previousTimestamp_ = helperObject.timeStamp_;
    return;
  }

 float dt = (helperObject.timeStamp_ - previousTimestamp_) / 1000000.0;
 previousTimestamp_ = helperObject.timeStamp_;
 kf_.F_ << 1, 0, dt, 0,
           0, 1, 0, dt,
           0, 0, 1, 0,
           0, 0, 0, 1;
 int nay = 9;
 int nax = 9;
 kf_.Q_ << pow(dt,4.0)*nax/4, 0, pow(dt,3.0)*nax/2, 0,
               0, pow(dt,4.0)*nay/4, 0, pow(dt,3.0)*nay/2,
               pow(dt,3.0)*nax/2, 0, pow(dt,2.0)*nax, 0,
               0, pow(dt,3.0)*nay/2, 0, pow(dt,2.0)*nay;
 kf_.predict();
 if (helperObject.sensorType_ == Helper::RADAR) {
   Hj_ = helper_.calculateJacobian(kf_.X_);
   kf_.updateEKF(helperObject.rawMeasurements_, Hj_);
   std::cout << "Updating with EKF....." << std::endl;
 } else {
   kf_.update(helperObject.rawMeasurements_);
   std::cout << "Updating with KF....." << std::endl;
 }

}
