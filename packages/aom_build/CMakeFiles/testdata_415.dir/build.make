# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /root/packages/av1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/packages/aom_build

# Utility rule file for testdata_415.

# Include the progress variables for this target.
include CMakeFiles/testdata_415.dir/progress.make

CMakeFiles/testdata_415:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/root/packages/aom_build" -DAOM_ROOT="/root/packages/av1" -DAOM_TEST_FILE="av1-1-b10-00-quantizer-13.ivf" -DAOM_TEST_CHECKSUM=04b0e5a7387e07474f51be4b2c3e05211b40f0d0 -P /root/packages/av1/test/test_data_download_worker.cmake

testdata_415: CMakeFiles/testdata_415
testdata_415: CMakeFiles/testdata_415.dir/build.make

.PHONY : testdata_415

# Rule to build all files generated by this target.
CMakeFiles/testdata_415.dir/build: testdata_415

.PHONY : CMakeFiles/testdata_415.dir/build

CMakeFiles/testdata_415.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_415.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_415.dir/clean

CMakeFiles/testdata_415.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/testdata_415.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_415.dir/depend

