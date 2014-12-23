LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_POWERHAL_VARIANT),jfltetmo)

include $(CLEAR_VARS)
LOCAL_MODULE               := power.msm8960
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS          := optional
LOCAL_PROPRIETARY_MODULE   := true
LOCAL_SHARED_LIBRARIES     := liblog libcutils libdl
LOCAL_SRC_FILES            := power.c metadata-parser.c utils.c list.c hint-data.c power-8960.c
include $(BUILD_SHARED_LIBRARY)

endif
