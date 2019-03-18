#include <pcl/range_image/range_image.h>
#include <iostream>
#include <pcl/visualization/common/float_image_utils.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/visualization/range_image_visualizer.h>

int main (int argc, char** argv) {
  pcl::PointCloud<pcl::PointXYZ> pointCloud;
  
  // Generate the data
  for (float y=-0.5f; y<=0.5f; y+=0.01f) {
    for (float z=-0.5f; z<=0.5f; z+=0.01f) {
      pcl::PointXYZ point;
      point.x = 2.0f - y;
      point.y = y;
      point.z = z;
      pointCloud.points.push_back(point);
    }
  }
  pointCloud.width = (uint32_t) pointCloud.points.size();
  pointCloud.height = 1;
  

  pcl::PointCloud<PointType>::Ptr point_cloud_ptr (new pcl::PointCloud<PointType>);
  pcl::PointCloud<PointType>& point_cloud = *point_cloud_ptr;
  Eigen::Affine3f scene_sensor_pose (Eigen::Affine3f::Identity ());
 
    if (pcl::io::loadPCDFile ("region_growing_tutorial.pcd", point_cloud) == -1)
    {
      std::cout << "Was not able to open file \""<<filename<<"\".\n";
      printUsage (argv[0]);
      return 0;
    }
    else
    {
    std::cout << "\nNo *.pcd file given => Generating example point cloud.\n\n";
    for (float x=-0.5f; x<=0.5f; x+=0.01f)
    {
      for (float y=-0.5f; y<=0.5f; y+=0.01f)
      {
        PointType point;  point.x = x;  point.y = y;  point.z = 2.0f - y;
        point_cloud.points.push_back (point);
      }
    }
    point_cloud.width = (int) point_cloud.points.size ();  point_cloud.height = 1;
    }
    scene_sensor_pose = Eigen::Affine3f (Eigen::Translation3f (point_cloud.sensor_origin_[0],
                                                             point_cloud.sensor_origin_[1],
                                                             point_cloud.sensor_origin_[2])) *
                        Eigen::Affine3f (point_cloud.sensor_orientation_);


  // We now want to create a range image from the above point cloud, with a 1deg angular resolution
  float angularResolution = (float) (  1.0f * (M_PI/180.0f));  //   1.0 degree in radians
  float maxAngleWidth     = (float) (360.0f * (M_PI/180.0f));  // 360.0 degree in radians
  float maxAngleHeight    = (float) (180.0f * (M_PI/180.0f));  // 180.0 degree in radians
  Eigen::Affine3f sensorPose = (Eigen::Affine3f)Eigen::Translation3f(0.0f, 0.0f, 0.0f);
  pcl::RangeImage::CoordinateFrame coordinate_frame = pcl::RangeImage::CAMERA_FRAME;
  float noiseLevel=0.00;
  float minRange = 0.0f;
  int borderSize = 1;
  
  pcl::RangeImage rangeImage;
  rangeImage.createFromPointCloud(cloud, angularResolution, maxAngleWidth, maxAngleHeight,
                                  sensorPose, coordinate_frame, noiseLevel, minRange, borderSize);



  pcl::visualization::RangeImageVisualizer range_image_widget ("Range image");
  range_image_widget.showRangeImage (rangeImage);
  // float* ranges = rangeImage.getRangesArray (); 
  // unsigned char* rgb_image = pcl::visualization::FloatImageUtils::getVisualImage (ranges, rangeImage.width, rangeImage.height); 
  // pcl::io::savePNGFile("ha.png", rgb_image, rangeImage.width, rangeImage.height);
  std::cout << rangeImage << "\n";
}
