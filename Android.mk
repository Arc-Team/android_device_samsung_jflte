LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),jfltetmo)
    include $(call all-makefiles-under,$(LOCAL_PATH))
    include $(CLEAR_VARS)

# Create /firmware-mdm links
FIRMWARE_MDM_IMAGES := \
    acdb.mbn \
    apps.mbn \
    dsp1.mbn dsp2.mbn dsp3.mbn \
    efs1.mbn efs2.mbn efs3.mbn \
    mdm_acdb.img \
    rpm.mbn \
    sbl1.mbn \
    sbl2.mbn

FIRMWARE_MDM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MDM_IMAGES)))
$(FIRMWARE_MDM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-mdm/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MDM_SYMLINKS)

# Create /firmware links
FIRMWARE_IMAGES := \
    q6.b00 q6.b01 q6.b03 q6.b04 q6.b05 q6.b06 q6.mdt \
    tzapps.b00 tzapps.b01 tzapps.b02 tzapps.b03 tzapps.mdt \
    vidc.b00 vidc.b01 vidc.b02 vidc.b03 vidc.mdt

FIRMWARE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_IMAGES)))
$(FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_SYMLINKS)

endif
