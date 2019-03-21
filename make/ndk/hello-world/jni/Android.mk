LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := hello-world-ndk-src
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../native/include
LOCAL_SRC_FILES := $(LOCAL_PATH)/../native/src/main_src.c $(LOCAL_PATH)/../native/src/print.c
LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := libshared_print
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../native/include
LOCAL_SRC_FILES := $(LOCAL_PATH)/../native/src/shared_print.c
include $(BUILD_SHARED_LIBRARY)
#if shared lib prebuild
#LOCAL_SRC_FILES := $(LOCAL_PATH)/../native/so/armeabi-v7a/libshared_print.so
#include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := hello-world-ndk-shared
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../native/include
LOCAL_SRC_FILES := $(LOCAL_PATH)/../native/src/main_shared.c
LOCAL_SHARED_LIBRARIES := libshared_print
include $(BUILD_EXECUTABLE)
