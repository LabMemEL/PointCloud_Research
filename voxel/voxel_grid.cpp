#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/io/ply_io.h>
int
main (int argc, char** argv)
{
  pcl::PCLPointCloud2::Ptr cloud (new pcl::PCLPointCloud2 ());
  pcl::PCLPointCloud2::Ptr cloud_filtered (new pcl::PCLPointCloud2 ());

  // Fill in the cloud data
  pcl::PLYReader reader;
  // Replace the path below with the path where you saved your file
  reader.read ("soldier_vox10_0536.ply", *cloud); // Remember to download the file first!

  std::cerr << "PointCloud before filtering: " << cloud->width * cloud->height 
       << " data points (" << pcl::getFieldsList (*cloud) << ").";

  // Create the filtering object
  pcl::VoxelGrid<pcl::PCLPointCloud2> sor;
  sor.setInputCloud (cloud);
  sor.setLeafSize (10.0f, 10.0f, 10.0f);
  sor.filter (*cloud_filtered);

  std::cerr << "PointCloud after filtering: " << cloud_filtered->width * cloud_filtered->height 
       << " data points (" << pcl::getFieldsList (*cloud_filtered) << ").";

  pcl::PCDWriter writer;
  writer.write ("voxedSoldier.pcd", *cloud_filtered, 
         Eigen::Vector4f::Zero (), Eigen::Quaternionf::Identity (), false);

  return (0);
}