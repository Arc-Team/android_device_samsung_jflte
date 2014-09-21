LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS      := -Wall -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_C_INCLUDES  := system/core/init
LOCAL_MODULE      := libinit_jflte
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES   := init_jflte.c
include $(BUILD_STATIC_LIBRARY)
