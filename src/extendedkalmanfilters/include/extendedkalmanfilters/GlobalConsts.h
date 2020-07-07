// Technische Hochschule Ingolstadt

#ifndef CAMRARFUSION_SRC_ROSBAG_CREATION_INCLUDE_ROSBAG_CREATION_GLOBALCONSTS_H_
#define CAMRARFUSION_SRC_ROSBAG_CREATION_INCLUDE_ROSBAG_CREATION_GLOBALCONSTS_H_

#include "Include.h"
// ****************************************************************************** //
//    ********* Configuration Begin ********* //
const int gFrameReset = 0;
const int gQueueSize = 500;
const int gPublisherBaudRate  = 10;
//    ********* Configuration End ********* //
// ****************************************************************************** //
//    ********* Bag File Path Begin ********* //
#define gLidarNodeFile "/home/krishna/AVMLCodingHere/AvmlEkfWs/ROSBagFiles/Lidar.bag"
#define gRadarNodeFile "/home/krishna/AVMLCodingHere/AvmlEkfWs/ROSBagFiles/Radar.bag"
//    ********* Bag File Path End ********* //
// ****************************************************************************** //
//    ********* Global Constants Begin ********* //
constexpr char const* gRadarPublisherNode = "RadarNode";
constexpr char const* gLidarPublisherNode = "LidarNode";
constexpr char const* gOutputNode = "OutputNode";
constexpr char const* gFusionNode = "FusionNode";
constexpr char const* gRadarMsgname = "RadarMsg";
constexpr char const* gLidarMsgname = "LidarMsg";
constexpr char const* gVizMsgname = "visualization";
constexpr char const* gRmsErrorMsgname = "RMSErrorMsg";
constexpr char const* gFusionMsgname = "FusedMsg";
constexpr char const* gRadarBag = "ROSBagFiles/Radar.bag";
constexpr char const* gLidarBag = "ROSBagFiles/Lidar.bag";
constexpr char const* gRadarTopic = "/radar";
constexpr char const* gLidarTopic = "/lidar";
constexpr char const* gRadarBagName = "radar";
constexpr char const* gLidarBagName = "lidar";
constexpr char const* gArgument = "readCSV";
constexpr char const* gVizMarkerName = "/rvizFrame";
constexpr char const* gVizNameSpace = "points_and_lines";
constexpr char const* RadarDataFile = "../AvmlEkfWs/InputFiles/SensorData.csv";
constexpr char const* gRadarTopicname = "/RadarData";
//    ********* Global Constants End ********* //
// ****************************************************************************** //
#endif  // CAMRARFUSION_SRC_ROSBAG_CREATION_INCLUDE_ROSBAG_CREATION_GLOBALCONSTS_H_
