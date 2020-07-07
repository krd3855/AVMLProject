// Technische Hochschule Ingolstadt

#include "extendedkalmanfilters/RosBagCreator.h"

rosbag::Bag radarBag_(gRadarBag, rosbag::bagmode::Write);
rosbag::Bag lidarBag_(gLidarBag, rosbag::bagmode::Write);

RosBagCreator::RosBagCreator() {
  radarPublish_ = radarNode_.advertise<extendedkalmanfilters::RadarMeasurements>(gRadarTopic, gQueueSize);
  lidarPublish_ = lidarNode_.advertise<extendedkalmanfilters::LidarMeasurements>(gLidarTopic, gQueueSize);

}

void RosBagCreator :: read() {
  
  std::string sensor_type, rho_measured, phi_measured, rhodot_measured, time_stamp,
  x_ground_truth, y_ground_truth, vx_ground_truth, vy_ground_truth, yaw_groundtruth, 
  yaw_rate_groundtruth, x_measured, y_measured;

  std::ifstream finput(DataFile);
  std::string line;
  std::stringstream string(line);
  while (getline(finput, line)) {
    std::stringstream string(line);
    std::getline(string, sensor_type, ',');
    if (sensor_type == "L") {
      std::string sensorType;
      long long timeStamp;
      float xMeasured, yMeasured, xGt, y_gt, vxGt, vyGt;
      std::getline(string, x_measured, ',');
      std::getline(string, y_measured, ',');
      std::getline(string, time_stamp, ',');
      std::getline(string, x_ground_truth, ',');
      std::getline(string, y_ground_truth, ',');
      std::getline(string, vx_ground_truth, ',');
      std::getline(string, vy_ground_truth, ',');
      std::getline(string, yaw_groundtruth, ',');
      std::getline(string, yaw_rate_groundtruth, ',');
      sensorType = sensor_type;
      xMeasured = atof(x_measured.c_str());
      yMeasured = atof(y_measured.c_str());
      timeStamp = atof(time_stamp.c_str());
      xGt = atof(x_ground_truth.c_str());
      y_gt = atof(y_ground_truth.c_str());
      vxGt = atof(vx_ground_truth.c_str());
      vyGt = atof(vy_ground_truth.c_str());
      lidarWrite(sensorType, xMeasured, yMeasured, timeStamp, xGt, y_gt, vxGt, vyGt);

    } else if (sensor_type == "R") {
      std::string sensorType;
      long long timeStamp;
      float rho, phi, rhodot, xGt, y_gt, vxGt, vyGt;
      std::getline(string, rho_measured, ',');
      std::getline(string, phi_measured, ',');
      std::getline(string, rhodot_measured, ',');
      std::getline(string, time_stamp, ',');
      std::getline(string, x_ground_truth, ',');
      std::getline(string, y_ground_truth, ',');
      std::getline(string, vx_ground_truth, ',');
      std::getline(string, vy_ground_truth, ',');
      std::getline(string, yaw_groundtruth, ',');
      std::getline(string, yaw_rate_groundtruth, ',');
      sensorType = sensor_type;
      rho = atof(rho_measured.c_str());
      phi = atof(phi_measured.c_str());
      rhodot = atof(rhodot_measured.c_str());
      timeStamp = atof(time_stamp.c_str());
      xGt = atof(x_ground_truth.c_str());
      y_gt = atof(y_ground_truth.c_str());
      vxGt = atof(vx_ground_truth.c_str());
      vyGt = atof(vy_ground_truth.c_str());
      radarWrite(sensorType, rho, phi, rhodot, timeStamp, xGt, y_gt, vxGt, vyGt);
    } else {
      std::cout << "Unknown Data!! exiting" << std::endl;
      break;
    }
  }
}

void RosBagCreator :: radarWrite(std::string& sensorType, float rho, float phi, float rhodot, long long timeStamp, float xGt, float y_gt, float vxGt, float vyGt) {
  radarMeasurement_.sensor_type_ = sensorType;
  radarMeasurement_.rho_measured_ = rho;
  radarMeasurement_.phi_measured_ = phi;
  radarMeasurement_.rhodot_measured_ = rhodot;
  radarMeasurement_.time_stamp_ = timeStamp;
  radarMeasurement_.x_ground_truth_ = xGt;
  radarMeasurement_.y_ground_truth_ = y_gt;
  radarMeasurement_.vx_ground_truth_ = vxGt;
  radarMeasurement_.vy_ground_truth_ = vyGt;
  radarBag_.write(gRadarBagName, ros::Time::now(), radarMeasurement_);
  radarPublish_.publish(radarMeasurement_);
}

void RosBagCreator :: lidarWrite(std::string& sensorType, float xMeasured, float yMeasured, long long timeStamp, float xGt, float y_gt, float vxGt, float vyGt) {
  lidarMeasurement_.sensor_type_ = sensorType;
  lidarMeasurement_.x_measured_ = xMeasured;
  lidarMeasurement_.y_measured_ = yMeasured;
  lidarMeasurement_.time_stamp_ = timeStamp;
  lidarMeasurement_.x_ground_truth_ = xGt;
  lidarMeasurement_.y_ground_truth_ = y_gt;
  lidarMeasurement_.vx_ground_truth_ = vxGt;
  lidarMeasurement_.vy_ground_truth_ = vyGt;
  lidarBag_.write(gLidarBagName, ros::Time::now(), lidarMeasurement_);
  lidarPublish_.publish(lidarMeasurement_);
}


void RosBagCreator :: close() {
  radarBag_.close();
  lidarBag_.close();
  std::cout << "Bag Files Created!!! Please check ROSBagFiles folder" << std::endl;
}


int main(int argc, char **argv) {
    Ros ros;
    ros.initialize(argc, argv, gArgument);
    BagCreator *bagCreator;
    RosBagCreator rosBagCreator;
    bagCreator = &rosBagCreator;
    rosBagCreator.read();
    bagCreator->close();
    return 0;
}
