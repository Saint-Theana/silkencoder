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

# Utility rule file for testdata_71.

# Include the progress variables for this target.
include CMakeFiles/testdata_71.dir/progress.make

CMakeFiles/testdata_71:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/root/packages/aom_build" -DAOM_ROOT="/root/packages/av1" -DAOM_TEST_FILE="av1-1-b8-00-quantizer-05.ivf" -DAOM_TEST_CHECKSUM=ac9c5e93cb19942a9be259d0567ec96c54dcdc7c -P /root/packages/av1/test/test_data_download_worker.cmake

testdata_71: CMakeFiles/testdata_71
testdata_71: CMakeFiles/testdata_71.dir/build.make

.PHONY : testdata_71

# Rule to build all files generated by this target.
CMakeFiles/testdata_71.dir/build: testdata_71

.PHONY : CMakeFiles/testdata_71.dir/build

CMakeFiles/testdata_71.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_71.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_71.dir/clean

CMakeFiles/testdata_71.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/testdata_71.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_71.dir/depend

