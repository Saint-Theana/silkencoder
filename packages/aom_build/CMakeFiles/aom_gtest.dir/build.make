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

# Include any dependencies generated for this target.
include CMakeFiles/aom_gtest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/aom_gtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aom_gtest.dir/flags.make

CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o: CMakeFiles/aom_gtest.dir/flags.make
CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o: /root/packages/av1/third_party/googletest/src/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/packages/aom_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o"
	/usr/bin/clang++-5.0   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o -c /root/packages/av1/third_party/googletest/src/googletest/src/gtest-all.cc

CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.i"
	/usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/packages/av1/third_party/googletest/src/googletest/src/gtest-all.cc > CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.i

CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.s"
	/usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/packages/av1/third_party/googletest/src/googletest/src/gtest-all.cc -o CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.s

CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.requires:

.PHONY : CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.requires

CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.provides: CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.requires
	$(MAKE) -f CMakeFiles/aom_gtest.dir/build.make CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.provides.build
.PHONY : CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.provides

CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.provides.build: CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o


# Object files for target aom_gtest
aom_gtest_OBJECTS = \
"CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o"

# External object files for target aom_gtest
aom_gtest_EXTERNAL_OBJECTS =

libaom_gtest.a: CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o
libaom_gtest.a: CMakeFiles/aom_gtest.dir/build.make
libaom_gtest.a: CMakeFiles/aom_gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/packages/aom_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libaom_gtest.a"
	$(CMAKE_COMMAND) -P CMakeFiles/aom_gtest.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aom_gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aom_gtest.dir/build: libaom_gtest.a

.PHONY : CMakeFiles/aom_gtest.dir/build

CMakeFiles/aom_gtest.dir/requires: CMakeFiles/aom_gtest.dir/third_party/googletest/src/googletest/src/gtest-all.cc.o.requires

.PHONY : CMakeFiles/aom_gtest.dir/requires

CMakeFiles/aom_gtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aom_gtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aom_gtest.dir/clean

CMakeFiles/aom_gtest.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/aom_gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aom_gtest.dir/depend

