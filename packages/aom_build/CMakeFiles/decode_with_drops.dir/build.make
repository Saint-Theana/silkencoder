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
include CMakeFiles/decode_with_drops.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/decode_with_drops.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/decode_with_drops.dir/flags.make

CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o: CMakeFiles/decode_with_drops.dir/flags.make
CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o: /root/packages/av1/examples/decode_with_drops.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/packages/aom_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o"
	/usr/bin/clang-5.0  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o   -c /root/packages/av1/examples/decode_with_drops.c

CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.i"
	/usr/bin/clang-5.0  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/packages/av1/examples/decode_with_drops.c > CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.i

CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.s"
	/usr/bin/clang-5.0  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/packages/av1/examples/decode_with_drops.c -o CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.s

CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.requires:

.PHONY : CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.requires

CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.provides: CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.requires
	$(MAKE) -f CMakeFiles/decode_with_drops.dir/build.make CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.provides.build
.PHONY : CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.provides

CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.provides.build: CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o


# Object files for target decode_with_drops
decode_with_drops_OBJECTS = \
"CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o"

# External object files for target decode_with_drops
decode_with_drops_EXTERNAL_OBJECTS = \
"/root/packages/aom_build/CMakeFiles/aom_common_app_util.dir/common/args.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_common_app_util.dir/common/av1_config.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_common_app_util.dir/common/md5_utils.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_common_app_util.dir/common/tools_common.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_common_app_util.dir/common/rawenc.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_common_app_util.dir/common/y4menc.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_decoder_app_util.dir/common/ivfdec.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_decoder_app_util.dir/common/obudec.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_decoder_app_util.dir/common/video_reader.c.o" \
"/root/packages/aom_build/CMakeFiles/aom_decoder_app_util.dir/common/webmdec.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/cpu_id.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/planar_functions.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_any.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_common.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_gcc.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_mips.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon64.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_win.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_any.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_common.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_gcc.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_mips.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon64.cc.o" \
"/root/packages/aom_build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_win.cc.o" \
"/root/packages/aom_build/CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o" \
"/root/packages/aom_build/CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o" \
"/root/packages/aom_build/CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o" \
"/root/packages/aom_build/CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o" \
"/root/packages/aom_build/CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o" \
"/root/packages/aom_build/CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o"

examples/decode_with_drops: CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o
examples/decode_with_drops: CMakeFiles/aom_common_app_util.dir/common/args.c.o
examples/decode_with_drops: CMakeFiles/aom_common_app_util.dir/common/av1_config.c.o
examples/decode_with_drops: CMakeFiles/aom_common_app_util.dir/common/md5_utils.c.o
examples/decode_with_drops: CMakeFiles/aom_common_app_util.dir/common/tools_common.c.o
examples/decode_with_drops: CMakeFiles/aom_common_app_util.dir/common/rawenc.c.o
examples/decode_with_drops: CMakeFiles/aom_common_app_util.dir/common/y4menc.c.o
examples/decode_with_drops: CMakeFiles/aom_decoder_app_util.dir/common/ivfdec.c.o
examples/decode_with_drops: CMakeFiles/aom_decoder_app_util.dir/common/obudec.c.o
examples/decode_with_drops: CMakeFiles/aom_decoder_app_util.dir/common/video_reader.c.o
examples/decode_with_drops: CMakeFiles/aom_decoder_app_util.dir/common/webmdec.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/cpu_id.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/planar_functions.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_any.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_common.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_gcc.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_mips.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon64.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/row_win.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_any.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_common.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_gcc.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_mips.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon64.cc.o
examples/decode_with_drops: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_win.cc.o
examples/decode_with_drops: CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o
examples/decode_with_drops: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o
examples/decode_with_drops: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o
examples/decode_with_drops: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o
examples/decode_with_drops: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o
examples/decode_with_drops: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o
examples/decode_with_drops: CMakeFiles/decode_with_drops.dir/build.make
examples/decode_with_drops: libaom.a
examples/decode_with_drops: CMakeFiles/decode_with_drops.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/packages/aom_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable examples/decode_with_drops"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/decode_with_drops.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/decode_with_drops.dir/build: examples/decode_with_drops

.PHONY : CMakeFiles/decode_with_drops.dir/build

CMakeFiles/decode_with_drops.dir/requires: CMakeFiles/decode_with_drops.dir/examples/decode_with_drops.c.o.requires

.PHONY : CMakeFiles/decode_with_drops.dir/requires

CMakeFiles/decode_with_drops.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/decode_with_drops.dir/cmake_clean.cmake
.PHONY : CMakeFiles/decode_with_drops.dir/clean

CMakeFiles/decode_with_drops.dir/depend:
	cd /root/packages/aom_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/packages/av1 /root/packages/av1 /root/packages/aom_build /root/packages/aom_build /root/packages/aom_build/CMakeFiles/decode_with_drops.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/decode_with_drops.dir/depend
