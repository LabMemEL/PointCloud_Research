# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/li/pcl_workspace/super

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/li/pcl_workspace/super/build

# Include any dependencies generated for this target.
include CMakeFiles/supervoxel_clustering.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/supervoxel_clustering.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/supervoxel_clustering.dir/flags.make

CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o: CMakeFiles/supervoxel_clustering.dir/flags.make
CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o: ../supervoxel_clustering.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/li/pcl_workspace/super/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o -c /home/li/pcl_workspace/super/supervoxel_clustering.cpp

CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/li/pcl_workspace/super/supervoxel_clustering.cpp > CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.i

CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/li/pcl_workspace/super/supervoxel_clustering.cpp -o CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.s

CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.requires:
.PHONY : CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.requires

CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.provides: CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.requires
	$(MAKE) -f CMakeFiles/supervoxel_clustering.dir/build.make CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.provides.build
.PHONY : CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.provides

CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.provides.build: CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o

# Object files for target supervoxel_clustering
supervoxel_clustering_OBJECTS = \
"CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o"

# External object files for target supervoxel_clustering
supervoxel_clustering_EXTERNAL_OBJECTS =

supervoxel_clustering: CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o
supervoxel_clustering: CMakeFiles/supervoxel_clustering.dir/build.make
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_system.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_thread.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libpthread.so
supervoxel_clustering: /usr/lib/libpcl_common.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
supervoxel_clustering: /usr/lib/libpcl_kdtree.so
supervoxel_clustering: /usr/lib/libpcl_octree.so
supervoxel_clustering: /usr/lib/libpcl_search.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libqhull.so
supervoxel_clustering: /usr/lib/libpcl_surface.so
supervoxel_clustering: /usr/lib/libpcl_sample_consensus.so
supervoxel_clustering: /usr/lib/libOpenNI.so
supervoxel_clustering: /usr/lib/libOpenNI2.so
supervoxel_clustering: /usr/lib/libvtkCommon.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkFiltering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkImaging.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGraphics.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGenericFiltering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkIO.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkRendering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkVolumeRendering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkHybrid.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkWidgets.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkParallel.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkInfovis.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGeovis.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkViews.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkCharts.so.5.8.0
supervoxel_clustering: /usr/lib/libpcl_io.so
supervoxel_clustering: /usr/lib/libpcl_filters.so
supervoxel_clustering: /usr/lib/libpcl_features.so
supervoxel_clustering: /usr/lib/libpcl_keypoints.so
supervoxel_clustering: /usr/lib/libpcl_registration.so
supervoxel_clustering: /usr/lib/libpcl_segmentation.so
supervoxel_clustering: /usr/lib/libpcl_recognition.so
supervoxel_clustering: /usr/lib/libpcl_visualization.so
supervoxel_clustering: /usr/lib/libpcl_people.so
supervoxel_clustering: /usr/lib/libpcl_outofcore.so
supervoxel_clustering: /usr/lib/libpcl_tracking.so
supervoxel_clustering: /usr/lib/libpcl_apps.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_system.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_thread.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libpthread.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libqhull.so
supervoxel_clustering: /usr/lib/libOpenNI.so
supervoxel_clustering: /usr/lib/libOpenNI2.so
supervoxel_clustering: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
supervoxel_clustering: /usr/lib/libvtkCommon.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkFiltering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkImaging.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGraphics.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGenericFiltering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkIO.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkRendering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkVolumeRendering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkHybrid.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkWidgets.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkParallel.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkInfovis.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGeovis.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkViews.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkCharts.so.5.8.0
supervoxel_clustering: /usr/lib/libpcl_common.so
supervoxel_clustering: /usr/lib/libpcl_kdtree.so
supervoxel_clustering: /usr/lib/libpcl_octree.so
supervoxel_clustering: /usr/lib/libpcl_search.so
supervoxel_clustering: /usr/lib/libpcl_surface.so
supervoxel_clustering: /usr/lib/libpcl_sample_consensus.so
supervoxel_clustering: /usr/lib/libpcl_io.so
supervoxel_clustering: /usr/lib/libpcl_filters.so
supervoxel_clustering: /usr/lib/libpcl_features.so
supervoxel_clustering: /usr/lib/libpcl_keypoints.so
supervoxel_clustering: /usr/lib/libpcl_registration.so
supervoxel_clustering: /usr/lib/libpcl_segmentation.so
supervoxel_clustering: /usr/lib/libpcl_recognition.so
supervoxel_clustering: /usr/lib/libpcl_visualization.so
supervoxel_clustering: /usr/lib/libpcl_people.so
supervoxel_clustering: /usr/lib/libpcl_outofcore.so
supervoxel_clustering: /usr/lib/libpcl_tracking.so
supervoxel_clustering: /usr/lib/libpcl_apps.so
supervoxel_clustering: /usr/lib/libvtkViews.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkInfovis.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkWidgets.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkVolumeRendering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkHybrid.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkParallel.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkRendering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkImaging.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkGraphics.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkIO.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkFiltering.so.5.8.0
supervoxel_clustering: /usr/lib/libvtkCommon.so.5.8.0
supervoxel_clustering: /usr/lib/libvtksys.so.5.8.0
supervoxel_clustering: CMakeFiles/supervoxel_clustering.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable supervoxel_clustering"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/supervoxel_clustering.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/supervoxel_clustering.dir/build: supervoxel_clustering
.PHONY : CMakeFiles/supervoxel_clustering.dir/build

CMakeFiles/supervoxel_clustering.dir/requires: CMakeFiles/supervoxel_clustering.dir/supervoxel_clustering.cpp.o.requires
.PHONY : CMakeFiles/supervoxel_clustering.dir/requires

CMakeFiles/supervoxel_clustering.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/supervoxel_clustering.dir/cmake_clean.cmake
.PHONY : CMakeFiles/supervoxel_clustering.dir/clean

CMakeFiles/supervoxel_clustering.dir/depend:
	cd /home/li/pcl_workspace/super/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/li/pcl_workspace/super /home/li/pcl_workspace/super /home/li/pcl_workspace/super/build /home/li/pcl_workspace/super/build /home/li/pcl_workspace/super/build/CMakeFiles/supervoxel_clustering.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/supervoxel_clustering.dir/depend

