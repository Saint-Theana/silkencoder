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

# Utility rule file for testdata_10.

# Include the progress variables for this target.
include CMakeFiles/testdata_10.dir/progress.make

CMakeFiles/testdata_10:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/root/packages/aom_build" -DAOM_ROOT="/root/packages/av1" -DAOM_TEST_FILE="invalid-oss-fuzz-10227.ivf" -DAOM_TEST_CHECKSUM=91a5bedeb4832c1c2900736cc0f644bb63971bbc -P /root/packages/av1/test/test_data_download_worker.cmake

testdata_10: CMakeFiles/testdata_10
testdata_10: CMakeFiles/testdata_10.dir/build.make

.PHONY : testdata_10

# Rule to build all files generated by this target.
CMakeFiles/testdata_10.dir/build: testdata_10

.PHONY : CMakeFiles/testdata_10.dir/build

CMakeFiles/testdata_10.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_10.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_10.dir/clean

CMakeFiles/testdata_10.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/testdata_10.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_10.dir/depend

