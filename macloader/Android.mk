LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_HAVE_SAMSUNG_WIFI),true)

include $(CLEAR_VARS)
LOCAL_MODULE           := macloader
LOCAL_MODULE_TAGS      := optional
LOCAL_SHARED_LIBRARIES := liblog libutils
LOCAL_SRC_FILES        := macloader.cpp
include $(BUILD_EXECUTABLE)

endif
