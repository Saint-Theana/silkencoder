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

# Utility rule file for testdata_243.

# Include the progress variables for this target.
include CMakeFiles/testdata_243.dir/progress.make

CMakeFiles/testdata_243:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/root/packages/aom_build" -DAOM_ROOT="/root/packages/av1" -DAOM_TEST_FILE="av1-1-b8-01-size-34x64.ivf" -DAOM_TEST_CHECKSUM=e3e03ec5d38eb25e97e4ec3adc6ed40ecdebd278 -P /root/packages/av1/test/test_data_download_worker.cmake

testdata_243: CMakeFiles/testdata_243
testdata_243: CMakeFiles/testdata_243.dir/build.make

.PHONY : testdata_243

# Rule to build all files generated by this target.
CMakeFiles/testdata_243.dir/build: testdata_243

.PHONY : CMakeFiles/testdata_243.dir/build

CMakeFiles/testdata_243.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_243.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_243.dir/clean

CMakeFiles/testdata_243.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/testdata_243.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_243.dir/depend

