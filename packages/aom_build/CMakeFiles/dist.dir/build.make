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

# Utility rule file for dist.

# Include the progress variables for this target.
include CMakeFiles/dist.dir/progress.make

CMakeFiles/dist: /root/packages/av1/aom/aom.h
CMakeFiles/dist: /root/packages/av1/aom/aom_codec.h
CMakeFiles/dist: /root/packages/av1/aom/aom_frame_buffer.h
CMakeFiles/dist: /root/packages/av1/aom/aom_image.h
CMakeFiles/dist: /root/packages/av1/aom/aom_integer.h
CMakeFiles/dist: /root/packages/av1/aom/aom.h
CMakeFiles/dist: /root/packages/av1/aom/aom_decoder.h
CMakeFiles/dist: /root/packages/av1/aom/aomdx.h
CMakeFiles/dist: /root/packages/av1/aom/aomcx.h
CMakeFiles/dist: /root/packages/av1/aom/aom_encoder.h
CMakeFiles/dist: aomdec
CMakeFiles/dist: examples/decode_to_md5
CMakeFiles/dist: examples/decode_with_drops
CMakeFiles/dist: examples/scalable_decoder
CMakeFiles/dist: examples/simple_decoder
CMakeFiles/dist: aomenc
CMakeFiles/dist: examples/lossless_encoder
CMakeFiles/dist: examples/noise_model
CMakeFiles/dist: examples/set_maps
CMakeFiles/dist: examples/simple_encoder
CMakeFiles/dist: examples/scalable_encoder
CMakeFiles/dist: examples/twopass_encoder
CMakeFiles/dist: examples/svc_encoder_rtc
CMakeFiles/dist: examples/aom_cx_set_ref
CMakeFiles/dist: examples/lightfield_encoder
CMakeFiles/dist: examples/lightfield_tile_list_decoder
CMakeFiles/dist: examples/lightfield_decoder
CMakeFiles/dist: examples/lightfield_bitstream_parsing
CMakeFiles/dist: tools/dump_obu
	/usr/bin/cmake -DAOM_ROOT=/root/packages/av1 -DAOM_CONFIG_DIR=/root/packages/aom_build -DAOM_DIST_DIR=/root/packages/aom_build/dist -DAOM_DIST_APPS="/root/packages/aom_build/aomdec /root/packages/aom_build/aomenc" -DAOM_DIST_EXAMPLES="/root/packages/aom_build/aomdec /root/packages/aom_build/examples/decode_to_md5 /root/packages/aom_build/examples/decode_with_drops /root/packages/aom_build/examples/scalable_decoder /root/packages/aom_build/examples/simple_decoder /root/packages/aom_build/aomenc /root/packages/aom_build/examples/lossless_encoder /root/packages/aom_build/examples/noise_model /root/packages/aom_build/examples/set_maps /root/packages/aom_build/examples/simple_encoder /root/packages/aom_build/examples/scalable_encoder /root/packages/aom_build/examples/twopass_encoder /root/packages/aom_build/examples/svc_encoder_rtc /root/packages/aom_build/examples/aom_cx_set_ref /root/packages/aom_build/examples/lightfield_encoder /root/packages/aom_build/examples/lightfield_tile_list_decoder /root/packages/aom_build/examples/lightfield_decoder /root/packages/aom_build/examples/lightfield_bitstream_parsing" -DAOM_DIST_TOOLS="/root/packages/aom_build/tools/dump_obu" -DAOM_DIST_INCLUDES="/root/packages/av1/aom/aom.h /root/packages/av1/aom/aom_codec.h /root/packages/av1/aom/aom_frame_buffer.h /root/packages/av1/aom/aom_image.h /root/packages/av1/aom/aom_integer.h /root/packages/av1/aom/aom.h /root/packages/av1/aom/aom_decoder.h /root/packages/av1/aom/aomdx.h /root/packages/av1/aom/aomcx.h /root/packages/av1/aom/aom_encoder.h" -DAOM_DIST_LIBS=/root/packages/aom_build/libaom.a -DENABLE_DOCS=OFF -P /root/packages/av1/build/cmake/dist.cmake

dist: CMakeFiles/dist
dist: CMakeFiles/dist.dir/build.make

.PHONY : dist

# Rule to build all files generated by this target.
CMakeFiles/dist.dir/build: dist

.PHONY : CMakeFiles/dist.dir/build

CMakeFiles/dist.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dist.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dist.dir/clean

CMakeFiles/dist.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/dist.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dist.dir/depend
