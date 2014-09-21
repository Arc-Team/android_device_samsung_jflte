LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := system/core/healthd
LOCAL_MODULE     := libhealthd.qcom
LOCAL_SRC_FILES  := healthd_board_default.cpp
include $(BUILD_STATIC_LIBRARY)
