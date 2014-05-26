LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := libtime_genoff
LOCAL_MODULE_OWNER  := samsung
LOCAL_SRC_FILES     := lib/libtime_genoff.so
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

ifeq ($(call is-board-platform-in-list,msm8960 msm8660),true)

include $(CLEAR_VARS)
LOCAL_MODULE       := media_codecs.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/
LOCAL_SRC_FILES    := etc/media_codecs.xml
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE       := media_codecs.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/
LOCAL_SRC_FILES    := etc/media_codecs_8974.xml
include $(BUILD_PREBUILT)

endif
