LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := libtime_genoff
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_OWNER  := samsung
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := lib/vendor/libtime_genoff.so
include $(BUILD_PREBUILT)
