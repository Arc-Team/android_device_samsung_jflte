LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := consumerir.msm8960
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SRC_FILES := consumerir.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
