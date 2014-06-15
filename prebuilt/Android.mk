
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := libtime_genoff
LOCAL_MODULE_OWNER  := samsung
LOCAL_SRC_FILES     := lib/libtime_genoff.so
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
include $(BUILD_PREBUILT)
