LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := TimeService
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := samsung
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/TimeService/TimeService.apk
include $(BUILD_PREBUILT)
