# PointCloud_Research


## Getting Started

## Prerequisites

PCL 1.7 http://pointclouds.org/downloads
Although 1.8.0+ is preferred, the project uses last supported version of pre-built binaries via PPA, because building from source resulted in several libiary outdated and link issues.

The following method works with Ubuntu 14.04 LTS or lower versions.
```console
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-all
```

For simple visulization of a point cloud (.pcd) file
```console
pcl_viewer file.pcd
```
A typical way to build and run an example (with existing source and CMakeLists.txt) is

```console
mkdir build & cd build
cmake ..
make
./example
```
