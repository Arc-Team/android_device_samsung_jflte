# Inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/jfltetmo/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    power.msm8960

# GalaxyS3Settings
PRODUCT_PACKAGES += \
    GalaxyS3Settings \
    SamsungServiceMode

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    crda \
    regulatory.bin \
    linville.key.pub.pem

# NFC packages
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.msm8960 \
    NfcNci \
    Tag \
    com.android.nfc_extras

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Thermal profiles
PRODUCT_PACKAGES += \
    thermald-8064ab.conf \
    thermald-8064.conf \
    thermald-8930.conf \
    thermald-8930ab.conf \
    thermald-8960.conf \
    thermald-8960ab.conf \
    thermal-engine-8064ab.conf \
    thermal-engine-8064.conf \
    thermal-engine-8930.conf \
    thermal-engine-8960.conf

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.post_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.early_boot.sh \
    init.qcom.mdm_links.sh \
    init.qcom.modem_links.sh \
    init.qcom.usb.sh \
    lpm.rc \
    init.qcom.lpm_boot.sh \
    init.qcom.thermal_conf.sh \
    init.recovery.qcom.rc \
    init.qcom.ril.sh

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.carrier.rc \
    init.crda.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Misc
PRODUCT_PACKAGES += \
    Torch \
    lights.msm8960 \
    libtime_genoff \
    irda.msm8960 \
    com.android.future.usb.accessory

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

ifeq ($(NEEDS_GPS_MSB_DISABLED),true)
    GPS_CONF := device/samsung/jfltetmo/gps/gps-nomsb.conf
else
    GPS_CONF := device/samsung/jfltetmo/gps/gps.conf
endif

PRODUCT_COPY_FILES += \
    $(GPS_CONF):/system/etc/gps.conf

# NFCEE
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/samsung/jfltetmo/proprietary/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

# Media Config
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/jfltetmo/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml

# Recovery
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/samsung/jfltetmo/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Expose Irda feature
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/etc/permissions/com.sec.feature.irda_service.xml:system/etc/permissions/com.sec.feature.irda_service.xml

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/etc/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    device/samsung/jfltetmo/proprietary/etc/audio_policy.conf:system/etc/audio_policy.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/etc/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/jfltetmo/proprietary/etc/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Keychars
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/samsung/jfltetmo/proprietary/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/jfltetmo/proprietary/usr/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Propietary Files
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/proprietary/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/samsung/jfltetmo/proprietary/bin/efsks:system/bin/efsks \
    device/samsung/jfltetmo/proprietary/bin/ks:system/bin/ks \
    device/samsung/jfltetmo/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/samsung/jfltetmo/proprietary/bin/mpdecision:system/bin/mpdecision \
    device/samsung/jfltetmo/proprietary/bin/netmgrd:system/bin/netmgrd \
    device/samsung/jfltetmo/proprietary/bin/qcks:system/bin/qcks \
    device/samsung/jfltetmo/proprietary/bin/qmiproxy:system/bin/qmiproxy \
    device/samsung/jfltetmo/proprietary/bin/qmuxd:system/bin/qmuxd \
    device/samsung/jfltetmo/proprietary/bin/qseecomd:system/bin/qseecomd \
    device/samsung/jfltetmo/proprietary/bin/rild:system/bin/rild \
    device/samsung/jfltetmo/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/jfltetmo/proprietary/bin/sec-ril:system/bin/sec-ril \
    device/samsung/jfltetmo/proprietary/bin/thermal-engine:system/bin/thermal-engine \
    device/samsung/jfltetmo/proprietary/bin/thermald:system/bin/thermald \
    device/samsung/jfltetmo/proprietary/bin/time_daemon:system/bin/time_daemon \
    device/samsung/jfltetmo/proprietary/cameradata/M10MO_SFW.bin:system/cameradata/M10MO_SFW.bin \
    device/samsung/jfltetmo/proprietary/cameradata/RS_M10MO_OL.bin:system/cameradata/RS_M10MO_OL.bin \
    device/samsung/jfltetmo/proprietary/cameradata/RS_M10MO_OS.bin:system/cameradata/RS_M10MO_OS.bin \
    device/samsung/jfltetmo/proprietary/cameradata/RS_M10MO_SL.bin:system/cameradata/RS_M10MO_SL.bin \
    device/samsung/jfltetmo/proprietary/cameradata/RS_M10MO_SS.bin:system/cameradata/RS_M10MO_SS.bin \
    device/samsung/jfltetmo/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    device/samsung/jfltetmo/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    device/samsung/jfltetmo/proprietary/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/samsung/jfltetmo/proprietary/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/samsung/jfltetmo/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/samsung/jfltetmo/proprietary/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    device/samsung/jfltetmo/proprietary/etc/wifi/bcmdhd_apsta.bin_a0:system/etc/wifi/bcmdhd_apsta.bin_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin \
    device/samsung/jfltetmo/proprietary/etc/wifi/bcmdhd_mfg.bin_a0:system/etc/wifi/bcmdhd_mfg.bin_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    device/samsung/jfltetmo/proprietary/etc/wifi/bcmdhd_sta.bin_a0:system/etc/wifi/bcmdhd_sta.bin_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/cred.conf:system/etc/wifi/cred.conf \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_a0:system/etc/wifi/nvram_mfg.txt_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_murata:system/etc/wifi/nvram_mfg.txt_murata \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_murata_a0:system/etc/wifi/nvram_mfg.txt_murata_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_muratafem1:system/etc/wifi/nvram_mfg.txt_muratafem1 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_muratafem2:system/etc/wifi/nvram_mfg.txt_muratafem2 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_semco3rd:system/etc/wifi/nvram_mfg.txt_semco3rd \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_semco3rd_a0:system/etc/wifi/nvram_mfg.txt_semco3rd_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_mfg.txt_semcosh:system/etc/wifi/nvram_mfg.txt_semcosh \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_a0:system/etc/wifi/nvram_net.txt_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_murata:system/etc/wifi/nvram_net.txt_murata \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_murata_a0:system/etc/wifi/nvram_net.txt_murata_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_muratafem1:system/etc/wifi/nvram_net.txt_muratafem1 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_muratafem2:system/etc/wifi/nvram_net.txt_muratafem2 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_semco3rd:system/etc/wifi/nvram_net.txt_semco3rd \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_semco3rd_a0:system/etc/wifi/nvram_net.txt_semco3rd_a0 \
    device/samsung/jfltetmo/proprietary/etc/wifi/nvram_net.txt_semcosh:system/etc/wifi/nvram_net.txt_semcosh \
    device/samsung/jfltetmo/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/jfltetmo/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/samsung/jfltetmo/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/samsung/jfltetmo/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/samsung/jfltetmo/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/samsung/jfltetmo/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/samsung/jfltetmo/proprietary/lib/hw/camera.msm8960.so:system/lib/hw/camera.msm8960.so \
    device/samsung/jfltetmo/proprietary/lib/hw/sensorhubs.msm8960.so:system/lib/hw/sensorhubs.msm8960.so \
    device/samsung/jfltetmo/proprietary/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so \
    device/samsung/jfltetmo/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    device/samsung/jfltetmo/proprietary/lib/libExtendedExtractor.so:system/lib/libExtendedExtractor.so \
    device/samsung/jfltetmo/proprietary/lib/libOpenCL.so:system/lib/libOpenCL.so \
    device/samsung/jfltetmo/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/samsung/jfltetmo/proprietary/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    device/samsung/jfltetmo/proprietary/lib/libWVStreamControlAPI_L1.so:system/lib/libWVStreamControlAPI_L1.so \
    device/samsung/jfltetmo/proprietary/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/samsung/jfltetmo/proprietary/lib/libatparser.so:system/lib/libatparser.so \
    device/samsung/jfltetmo/proprietary/lib/libaudcal.so:system/lib/libaudcal.so \
    device/samsung/jfltetmo/proprietary/lib/libc2d2_a3xx.so:system/lib/libc2d2_a3xx.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx074_video_hd.so:system/lib/libchromatix_imx074_video_hd.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx074_zsl.so:system/lib/libchromatix_imx074_zsl.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx091_default_video.so:system/lib/libchromatix_imx091_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx091_preview.so:system/lib/libchromatix_imx091_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_imx091_video_hd.so:system/lib/libchromatix_imx091_video_hd.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_mt9e013_default_video.so:system/lib/libchromatix_mt9e013_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_mt9e013_preview.so:system/lib/libchromatix_mt9e013_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_mt9e013_video_hfr.so:system/lib/libchromatix_mt9e013_video_hfr.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov2720_hfr.so:system/lib/libchromatix_ov2720_hfr.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov2720_zsl.so:system/lib/libchromatix_ov2720_zsl.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov5647_default_video.so:system/lib/libchromatix_ov5647_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov5647_preview.so:system/lib/libchromatix_ov5647_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov8825_default_video.so:system/lib/libchromatix_ov8825_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov8825_preview.so:system/lib/libchromatix_ov8825_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov9726_default_video.so:system/lib/libchromatix_ov9726_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_ov9726_preview.so:system/lib/libchromatix_ov9726_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k6b2yx_pip.so:system/lib/libchromatix_s5k6b2yx_pip.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k6b2yx_preview.so:system/lib/libchromatix_s5k6b2yx_preview.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k6b2yx_smartstay.so:system/lib/libchromatix_s5k6b2yx_smartstay.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k6b2yx_video.so:system/lib/libchromatix_s5k6b2yx_video.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k6b2yx_vt.so:system/lib/libchromatix_s5k6b2yx_vt.so \
    device/samsung/jfltetmo/proprietary/lib/libchromatix_s5k6b2yx_vt_hd.so:system/lib/libchromatix_s5k6b2yx_vt_hd.so \
    device/samsung/jfltetmo/proprietary/lib/libcordon.so:system/lib/libcordon.so \
    device/samsung/jfltetmo/proprietary/lib/libcsd-client.so:system/lib/libcsd-client.so \
    device/samsung/jfltetmo/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    device/samsung/jfltetmo/proprietary/lib/libdivxdrm.so:system/lib/libdivxdrm.so \
    device/samsung/jfltetmo/proprietary/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    device/samsung/jfltetmo/proprietary/lib/libdrmfs.so:system/lib/libdrmfs.so \
    device/samsung/jfltetmo/proprietary/lib/libdrmtime.so:system/lib/libdrmtime.so \
    device/samsung/jfltetmo/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/samsung/jfltetmo/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    device/samsung/jfltetmo/proprietary/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    device/samsung/jfltetmo/proprietary/lib/libgemini.so:system/lib/libgemini.so \
    device/samsung/jfltetmo/proprietary/lib/libgeofence.so:system/lib/libgeofence.so \
    device/samsung/jfltetmo/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/samsung/jfltetmo/proprietary/lib/libhdcp2.so:system/lib/libhdcp2.so \
    device/samsung/jfltetmo/proprietary/lib/libidl.so:system/lib/libidl.so \
    device/samsung/jfltetmo/proprietary/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/samsung/jfltetmo/proprietary/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/samsung/jfltetmo/proprietary/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
    device/samsung/jfltetmo/proprietary/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/samsung/jfltetmo/proprietary/lib/libmercury.so:system/lib/libmercury.so \
    device/samsung/jfltetmo/proprietary/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_imx091.so:system/lib/libmmcamera_imx091.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_plugin.so:system/lib/libmmcamera_plugin.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    device/samsung/jfltetmo/proprietary/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    device/samsung/jfltetmo/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/samsung/jfltetmo/proprietary/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    device/samsung/jfltetmo/proprietary/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/samsung/jfltetmo/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/samsung/jfltetmo/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/samsung/jfltetmo/proprietary/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/samsung/jfltetmo/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/samsung/jfltetmo/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/samsung/jfltetmo/proprietary/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    device/samsung/jfltetmo/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/samsung/jfltetmo/proprietary/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    device/samsung/jfltetmo/proprietary/lib/libqdi.so:system/lib/libqdi.so \
    device/samsung/jfltetmo/proprietary/lib/libqdp.so:system/lib/libqdp.so \
    device/samsung/jfltetmo/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    device/samsung/jfltetmo/proprietary/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    device/samsung/jfltetmo/proprietary/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    device/samsung/jfltetmo/proprietary/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    device/samsung/jfltetmo/proprietary/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    device/samsung/jfltetmo/proprietary/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    device/samsung/jfltetmo/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/samsung/jfltetmo/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/jfltetmo/proprietary/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/samsung/jfltetmo/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/samsung/jfltetmo/proprietary/lib/libril.so:system/lib/libril.so \
    device/samsung/jfltetmo/proprietary/lib/libsam.so:system/lib/libsam.so \
    device/samsung/jfltetmo/proprietary/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \
    device/samsung/jfltetmo/proprietary/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/jfltetmo/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/jfltetmo/proprietary/lib/libsensirion_j1.so:system/lib/libsensirion_j1.so \
    device/samsung/jfltetmo/proprietary/lib/libtime_genoff.so:objy/lib/libtime_genoff.so \
    device/samsung/jfltetmo/proprietary/lib/libtime_genoff.so:system/lib/libtime_genoff.so \
    device/samsung/jfltetmo/proprietary/lib/libvdis.so:system/lib/libvdis.so \
    device/samsung/jfltetmo/proprietary/lib/libwvm.so:system/lib/libwvm.so \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm2079xB4_firmware.ncd:system/vendor/firmware/bcm2079xB4_firmware.ncd \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm2079xB4_pre_firmware.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware.ncd \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm4335.hcd:system/vendor/firmware/bcm4335.hcd \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm4335_A0.hcd:system/vendor/firmware/bcm4335_A0.hcd \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm4335_murata.hcd:system/vendor/firmware/bcm4335_murata.hcd \
    device/samsung/jfltetmo/proprietary/vendor/firmware/bcm4335_semco.hcd:system/vendor/firmware/bcm4335_semco.hcd

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# We have enough space to hold precise
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115 \
    ro.chipname=apq8064 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.radio.add_power_save=1 \
    persist.radio.snapshot_disabled=1 \
    persist.radio.use_se_table_only=1 \
    persist.radio.fill_eons=1 \
    com.qc.hardware=true \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.call_ring.multiple=0 \
    ro.sf.lcd_density=480 \
    ro.ril.transmitpower=true \
    ro.opengles.version=196608 \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.timed.enable=true \
    ro.emmc.sdcard.partition=17 \
    ro.use_data_netmgrd=true \
    persist.data.ds_fmc_app.mode=0 \
    persist.ims.regmanager.mode=0 \
    ro.config.ehrpd=true \
    persist.omh.enabled=1 \
    persist.data_netmgrd_nint=16 \
    lpa.decode=true \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    ro.cdma.subscribe_on_ruim_ready=true \
    persist.radio.no_wait_for_card=0 \
    keyguard.no_require_sim=true \
    media.aac_51_output_enabled=true \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ro.telephony.ril.v3=newDriverCall \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    ro.telephony.ril_class=SamsungQualcommRIL \
    ro.telephony.call_ring.multiple=0

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := jfltetmo
PRODUCT_NAME := jfltetmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-M919
PRODUCT_MANUFACTURER := Samsung
