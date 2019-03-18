#include <iostream>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/filters/passthrough.h>
#include <pcl/segmentation/region_growing_rgb.h>
#include <pcl/filters/voxel_grid.h>
int
main (int argc, char** argv)
{
  pcl::search::Search <pcl::PointXYZRGB>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZRGB>);
  pcl::PointCloud <pcl::PointXYZRGB>::Ptr cloud_filtered (new pcl::PointCloud <pcl::PointXYZRGB>);
  pcl::PointCloud <pcl::PointXYZRGB>::Ptr cloud (new pcl::PointCloud <pcl::PointXYZRGB>);
  if ( pcl::io::loadPCDFile <pcl::PointXYZRGB> ("voxed_red_dress.pcd", *cloud) == -1 )
  {
    std::cout << "Cloud reading failed." << std::endl;
    return (-1);
  }
  std::cerr << "PointCloud before filtering: " << cloud->width * cloud->height 
       << " data points (" << pcl::getFieldsList (*cloud) << ").";

  // pcl::VoxelGrid<pcl::PointXYZRGB> ori;
  // pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_source_ptr; 
  // cloud_source_ptr = cloud.makeShared (); 
  // ori.setInputCLoud (cloud_source_ptr);
  // ori.setLeafSize(0.001f, 0.001f, 0.001f);
  // ori.filter (*cloud_filtered);

  // ori.filter (*cloud_filtered_blob)
  // pcl::fromPCLPointCloud2 (*cloud_filtered_blob, *cloud_filtered);

  pcl::IndicesPtr indices (new std::vector <int>);
  pcl::PassThrough<pcl::PointXYZRGB> pass;
  pass.setInputCloud (cloud);
  pass.setFilterFieldName ("z");
  pass.setFilterLimits (0.0, 5.0);
  pass.filter (*indices);

  pcl::RegionGrowingRGB<pcl::PointXYZRGB> reg;
  reg.setInputCloud (cloud);
  // reg.setIndices (indices);
  reg.setSearchMethod (tree);
  reg.setDistanceThreshold (10);
  reg.setPointColorThreshold (6);
  reg.setRegionColorThreshold (5);
  reg.setMinClusterSize (600);

  std::vector <pcl::PointIndices> clusters;
  reg.extract (clusters);

  pcl::PointCloud <pcl::PointXYZRGB>::Ptr colored_cloud = reg.getColoredCloud ();
  pcl::visualization::CloudViewer viewer ("Cluster viewer");
  viewer.showCloud (colored_cloud);
  while (!viewer.wasStopped ())
  {
    boost::this_thread::sleep (boost::posix_time::microseconds (100));
  }

  return (0);
}