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

# Utility rule file for testdata_207.

# Include the progress variables for this target.
include CMakeFiles/testdata_207.dir/progress.make

CMakeFiles/testdata_207:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/root/packages/aom_build" -DAOM_ROOT="/root/packages/av1" -DAOM_TEST_FILE="av1-1-b8-01-size-34x18.ivf" -DAOM_TEST_CHECKSUM=fac7052b39bd2d0ae107e0e94050226712c770c2 -P /root/packages/av1/test/test_data_download_worker.cmake

testdata_207: CMakeFiles/testdata_207
testdata_207: CMakeFiles/testdata_207.dir/build.make

.PHONY : testdata_207

# Rule to build all files generated by this target.
CMakeFiles/testdata_207.dir/build: testdata_207

.PHONY : CMakeFiles/testdata_207.dir/build

CMakeFiles/testdata_207.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_207.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_207.dir/clean

CMakeFiles/testdata_207.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/testdata_207.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_207.dir/depend
