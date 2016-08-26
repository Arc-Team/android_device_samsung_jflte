LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := libtime_genoff
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_OWNER  := samsung
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS   := optional
LOCAL_MULTILIB      := 32
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES     := vendor/lib/libtime_genoff.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := TimeService
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := samsung
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/TimeService/TimeService.apk
include $(BUILD_PREBUILT)
