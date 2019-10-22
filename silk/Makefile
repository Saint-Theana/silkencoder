#					
# Makefile for Silk SDK			
#
# Copyright (c) 2012, Skype Limited
# All rights reserved.
#
CURRENT_DIR := $(shell pwd)
#Platform detection and settings

BUILD_OS := $(shell uname | sed -e 's/^.*Darwin.*/MacOS-X/ ; s/^.*CYGWIN.*/Windows/')

BUILD_ARCHITECTURE := $(shell uname -m | sed -e 's/i686/i386/')

JAVAHOME=/usr/lib/jvm/java-8-openjdk-amd64
EXESUFFIX = 
LIBPREFIX = lib
LIBSUFUXS = .so
LIBSUFFIX = .a
OBJSUFFIX = .o

CC     = $(TOOLCHAIN_PREFIX)clang-5.0$(TOOLCHAIN_SUFFIX)
CXX    = $(TOOLCHAIN_PREFIX)clang++-5.0$(TOOLCHAIN_SUFFIX)
AR     = $(TOOLCHAIN_PREFIX)ar
RANLIB = $(TOOLCHAIN_PREFIX)ranlib
CP     = $(TOOLCHAIN_PREFIX)cp

cppflags-from-defines 	= $(addprefix -D,$(1))
cppflags-from-includes 	= $(addprefix -I,$(1))
ldflags-from-ldlibdirs 	= $(addprefix -L,$(1))
ldlibs-from-libs        = $(addprefix -l,$(1))
CFLAGS += -fPIC -L../workspace/lib/ -lavcodec -lavformat  -lswresample -lswscale -lavutil -lfdk-aac -lx264 -lx265 -lavfilter -lavdevice -lpostproc -Wl,--whole-archive -Wl,-Bsymbolic
ifneq (,$(TARGET_CPU))
	CFLAGS	+= -mcpu=$(TARGET_CPU)
	ifneq (,$(TARGET_TUNE))
		CFLAGS	+= -mtune=$(TARGET_TUNE)
	else
		CFLAGS	+= -mtune=$(TARGET_CPU)
	endif
endif
ifneq (,$(TARGET_FPU))
	CFLAGS += -mfpu=$(TARGET_FPU)
endif
ifneq (,$(TARGET_ARCH))
	CFLAGS	+= -march=$(TARGET_ARCH)
endif
# Helper to make NEON testing easier, when using USE_NEON=yes do not set TARGET_CPU or TARGET_FPU
ifeq (yes,$(USE_NEON))
	CFLAGS += -mcpu=cortex-a8 -mfloat-abi=softfp -mfpu=neon
endif


CFLAGS	+= -Wall -enable-threads -O3 -w

CFLAGS  += $(call cppflags-from-defines,$(CDEFINES))
CFLAGS  += $(call cppflags-from-defines,$(ADDED_DEFINES))
CFLAGS  += $(call cppflags-from-includes,$(CINCLUDES))
LDFLAGS += $(call ldflags-from-ldlibdirs,$(LDLIBDIRS)) -L../workspace/lib/ -Wl,--whole-archive -lavcodec -lavformat -lvpx  -lx264 -lx265 -lswresample -lswscale -lavutil -lfdk-aac -lavfilter -lavdevice -lpostproc -Wl,--no-whole-archive -Wl,-Bsymbolic
LDLIBS  += $(call ldlibs-from-libs,$(LIBS))

COMPILE.c.cmdline   = $(CC) -c $(CFLAGS) $(ADDED_CFLAGS) -o $@ $<
COMPILE.S.cmdline   = $(CC) -c $(CFLAGS) $(ADDED_CFLAGS) -o $@ $<
COMPILE.cpp.cmdline = $(CXX) -c $(CFLAGS) $(ADDED_CFLAGS) -o $@ $<
LINK.o              = $(CXX) $(LDPREFLAGS) $(LDFLAGS)
LINK.o.cmdline      = $(LINK.o) $^ $(LDLIBS) -o $@$(EXESUFFIX) 
LINK.o.lib           = $(LINK.o) $^ $(LDLIBS) -shared -o $@
ARCHIVE.cmdline     = $(AR) $(ARFLAGS) $@ $^ && $(RANLIB) $@

%$(OBJSUFFIX):%.c
	$(COMPILE.c.cmdline)

%$(OBJSUFFIX):%.cpp
	$(COMPILE.cpp.cmdline)
	
%$(OBJSUFFIX):%.S
	$(COMPILE.S.cmdline)	

# Directives

CINCLUDES += silk/interface $(JAVAHOME)/include/ $(JAVAHOME)/include/linux/ ../packages/ffmpeg-6023b9f/ ../workspace/include

# VPATH e.g. VPATH = src:../headers
VPATH = ./ \
        interface \
        src \
        test 

# Variable definitions
LIB_NAME = SKP_SILK_SDK
TARGET = $(LIBPREFIX)$(LIB_NAME)$(LIBSUFFIX)

SRCS_C = $(wildcard silk/*.c) 
ifneq (,$(TOOLCHAIN_PREFIX))
	SRCS_S = $(wildcard silk/*.S)
	OBJS := $(patsubst %.c,%$(OBJSUFFIX),$(SRCS_C)) $(patsubst %.S,%$(OBJSUFFIX),$(SRCS_S))
else
	OBJS := $(patsubst %.c,%$(OBJSUFFIX),$(SRCS_C))
endif

ENCODER_SRCS_C = Encoder.c
ENCODER_OBJS := $(patsubst %.c,%$(OBJSUFFIX),$(ENCODER_SRCS_C))



LIBS = \
	$(LIB_NAME)

LDLIBDIRS = ./

# Rules
default: all

all: $(TARGET) $(LIBPREFIX)encoder$(LIBSUFUXS)

lib: $(TARGET)

$(TARGET): $(OBJS)
	$(ARCHIVE.cmdline)

$(LIBPREFIX)encoder$(LIBSUFUXS): $(ENCODER_OBJS)
	$(LINK.o.lib)


clean:
	$(RM) $(TARGET)* $(OBJS) $(ENCODER_OBJS) $(DECODER_OBJS) \
		  $(SIGNALCMP_OBJS) $(TEST_OBJS) \
		  encoder$(EXESUFFIX) decoder$(EXESUFFIX) signalcompare$(EXESUFFIX)

