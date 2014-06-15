# Inherit
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    memtrack.msm8960

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libc2dcolorconvert \
    libOmxVdecHevc \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer

# MSM8960
PRODUCT_PACKAGES += \
    camera.msm8960 \
    gps.msm8960 \
    power.msm8960 \
    lights.msm8960 \
    consumerir.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.crda.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# NFC packages
PRODUCT_PACKAGES += \
    Tag \
    NfcNci \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.msm8960 \
    com.android.nfc_extras

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Thermal
PRODUCT_PACKAGES += \
    thermald-8064ab.conf \
    thermald-8064.conf \
    thermald-8930.conf \
    thermald-8930ab.conf \
    thermald-8960.conf \
    thermald-8260a.conf \
    thermald-8960ab.conf \
    thermal-engine-8064ab.conf \
    init.qcom.thermal_conf.sh

# Scripts
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
    init.qcom.lpm_boot.sh \
    init.recovery.qcom.rc \
    init.qcom.ril.sh \
    lpm.rc

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    crda \
    regulatory.bin \
    linville.key.pub.pem

# LiveWallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Loki
PRODUCT_PACKAGES += \
    loki_patch \
    loki_flash \
    loki.sh \
    loki_bootloaders

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Misc
PRODUCT_PACKAGES += \
    Torch \
    qrngd \
    libtime_genoff \
    com.android.future.usb.accessory

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Recovery
PRODUCT_COPY_FILES += \
    device/samsung/jflte/rootdir/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/samsung/jflte/rootdir/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    device/samsung/jflte/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# Media
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/jflte/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# GPS/NFC
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/gps.conf:/system/etc/gps.conf \
    device/samsung/jflte/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/samsung/jflte/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Binary
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/samsung/jflte/prebuilt/bin/efsks:system/bin/efsks \
    device/samsung/jflte/prebuilt/bin/ks:system/bin/ks \
    device/samsung/jflte/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/samsung/jflte/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/samsung/jflte/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/samsung/jflte/prebuilt/bin/qcks:system/bin/qcks \
    device/samsung/jflte/prebuilt/bin/qmiproxy:system/bin/qmiproxy \
    device/samsung/jflte/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/samsung/jflte/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/samsung/jflte/prebuilt/bin/rild:system/bin/rild \
    device/samsung/jflte/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/jflte/prebuilt/bin/sec-ril:system/bin/sec-ril \
    device/samsung/jflte/prebuilt/bin/thermal-engine:system/bin/thermal-engine \
    device/samsung/jflte/prebuilt/bin/thermald:system/bin/thermald \
    device/samsung/jflte/prebuilt/bin/time_daemon:system/bin/time_daemon

# Blobs
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/blobs/cdma/lib/libril-qc-qmi-1.so:system/blobs/cdma/lib/libril-qc-qmi-1.so \
    device/samsung/jflte/prebuilt/blobs/cdma/lib/libril.so:system/blobs/cdma/lib/libril.so \
    device/samsung/jflte/prebuilt/blobs/gsm/lib/libril-qc-qmi-1.so:system/blobs/gsm/lib/libril-qc-qmi-1.so \
    device/samsung/jflte/prebuilt/blobs/gsm/lib/libril.so:system/blobs/gsm/lib/libril.so \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.b00:system/blobs/vzw/etc/firmware/q6.b00 \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.b01:system/blobs/vzw/etc/firmware/q6.b01 \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.b03:system/blobs/vzw/etc/firmware/q6.b03 \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.b04:system/blobs/vzw/etc/firmware/q6.b04 \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.b05:system/blobs/vzw/etc/firmware/q6.b05 \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.b06:system/blobs/vzw/etc/firmware/q6.b06 \
    device/samsung/jflte/prebuilt/blobs/vzw/etc/firmware/q6.mdt:system/blobs/vzw/etc/firmware/q6.mdt

# Camera
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/cameradata/M10MO_SFW.bin:system/cameradata/M10MO_SFW.bin \
    device/samsung/jflte/prebuilt/cameradata/RS_M10MO_OL.bin:system/cameradata/RS_M10MO_OL.bin \
    device/samsung/jflte/prebuilt/cameradata/RS_M10MO_OS.bin:system/cameradata/RS_M10MO_OS.bin \
    device/samsung/jflte/prebuilt/cameradata/RS_M10MO_SL.bin:system/cameradata/RS_M10MO_SL.bin \
    device/samsung/jflte/prebuilt/cameradata/RS_M10MO_SS.bin:system/cameradata/RS_M10MO_SS.bin \
    device/samsung/jflte/prebuilt/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    device/samsung/jflte/prebuilt/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    device/samsung/jflte/prebuilt/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_imx091.so:system/lib/libmmcamera_imx091.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_plugin.so:system/lib/libmmcamera_plugin.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    device/samsung/jflte/prebuilt/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    device/samsung/jflte/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/samsung/jflte/prebuilt/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    device/samsung/jflte/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/samsung/jflte/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/samsung/jflte/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/samsung/jflte/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so

# Firmware
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/samsung/jflte/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/samsung/jflte/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm2079xB4_firmware.ncd:system/vendor/firmware/bcm2079xB4_firmware.ncd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm2079xB4_pre_firmware.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware.ncd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335.hcd:system/vendor/firmware/bcm4335.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_A0.hcd:system/vendor/firmware/bcm4335_A0.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_murata.hcd:system/vendor/firmware/bcm4335_murata.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_semco.hcd:system/vendor/firmware/bcm4335_semco.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_apsta.bin_a0:system/etc/wifi/bcmdhd_apsta.bin_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_mfg.bin_a0:system/etc/wifi/bcmdhd_mfg.bin_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_sta.bin_a0:system/etc/wifi/bcmdhd_sta.bin_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/cred.conf:system/etc/wifi/cred.conf \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_a0:system/etc/wifi/nvram_mfg.txt_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_murata:system/etc/wifi/nvram_mfg.txt_murata \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_murata_a0:system/etc/wifi/nvram_mfg.txt_murata_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_muratafem1:system/etc/wifi/nvram_mfg.txt_muratafem1 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_muratafem2:system/etc/wifi/nvram_mfg.txt_muratafem2 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_semco3rd:system/etc/wifi/nvram_mfg.txt_semco3rd \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_semco3rd_a0:system/etc/wifi/nvram_mfg.txt_semco3rd_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt_semcosh:system/etc/wifi/nvram_mfg.txt_semcosh \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_a0:system/etc/wifi/nvram_net.txt_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_murata:system/etc/wifi/nvram_net.txt_murata \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_murata_a0:system/etc/wifi/nvram_net.txt_murata_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_muratafem1:system/etc/wifi/nvram_net.txt_muratafem1 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_muratafem2:system/etc/wifi/nvram_net.txt_muratafem2 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_semco3rd:system/etc/wifi/nvram_net.txt_semco3rd \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_semco3rd_a0:system/etc/wifi/nvram_net.txt_semco3rd_a0 \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt_semcosh:system/etc/wifi/nvram_net.txt_semcosh \
    device/samsung/jflte/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/jflte/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/jflte/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Hardware
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/hw/camera.vendor.msm8960.so:system/lib/hw/camera.vendor.msm8960.so \
    device/samsung/jflte/prebuilt/lib/hw/sensorhubs.msm8960.so:system/lib/hw/sensorhubs.msm8960.so \
    device/samsung/jflte/prebuilt/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so

# Chromatix
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx074_video_hd.so:system/lib/libchromatix_imx074_video_hd.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx074_zsl.so:system/lib/libchromatix_imx074_zsl.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx091_default_video.so:system/lib/libchromatix_imx091_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx091_preview.so:system/lib/libchromatix_imx091_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_imx091_video_hd.so:system/lib/libchromatix_imx091_video_hd.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_mt9e013_default_video.so:system/lib/libchromatix_mt9e013_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_mt9e013_preview.so:system/lib/libchromatix_mt9e013_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_mt9e013_video_hfr.so:system/lib/libchromatix_mt9e013_video_hfr.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov2720_hfr.so:system/lib/libchromatix_ov2720_hfr.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov2720_zsl.so:system/lib/libchromatix_ov2720_zsl.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov5647_default_video.so:system/lib/libchromatix_ov5647_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov5647_preview.so:system/lib/libchromatix_ov5647_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov8825_default_video.so:system/lib/libchromatix_ov8825_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov8825_preview.so:system/lib/libchromatix_ov8825_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov9726_default_video.so:system/lib/libchromatix_ov9726_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_ov9726_preview.so:system/lib/libchromatix_ov9726_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k6b2yx_pip.so:system/lib/libchromatix_s5k6b2yx_pip.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k6b2yx_preview.so:system/lib/libchromatix_s5k6b2yx_preview.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k6b2yx_smartstay.so:system/lib/libchromatix_s5k6b2yx_smartstay.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k6b2yx_video.so:system/lib/libchromatix_s5k6b2yx_video.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k6b2yx_vt.so:system/lib/libchromatix_s5k6b2yx_vt.so \
    device/samsung/jflte/prebuilt/lib/libchromatix_s5k6b2yx_vt_hd.so:system/lib/libchromatix_s5k6b2yx_vt_hd.so

# Misc
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/libExtendedExtractor.so:system/lib/libExtendedExtractor.so \
    device/samsung/jflte/prebuilt/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    device/samsung/jflte/prebuilt/lib/libWVStreamControlAPI_L1.so:system/lib/libWVStreamControlAPI_L1.so \
    device/samsung/jflte/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/samsung/jflte/prebuilt/lib/libadreno_utils.so:system/lib/libadreno_utils.so \
    device/samsung/jflte/prebuilt/lib/libadsprpc.so:system/lib/libadsprpc.so \
    device/samsung/jflte/prebuilt/lib/libatparser.so:system/lib/libatparser.so \
    device/samsung/jflte/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    device/samsung/jflte/prebuilt/lib/libcordon.so:system/lib/libcordon.so \
    device/samsung/jflte/prebuilt/lib/libcsd-client.so:system/lib/libcsd-client.so \
    device/samsung/jflte/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/samsung/jflte/prebuilt/lib/libdivxdrm.so:system/lib/libdivxdrm.so \
    device/samsung/jflte/prebuilt/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    device/samsung/jflte/prebuilt/lib/libdrmfs.so:system/lib/libdrmfs.so \
    device/samsung/jflte/prebuilt/lib/libdrmtime.so:system/lib/libdrmtime.so \
    device/samsung/jflte/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/samsung/jflte/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/samsung/jflte/prebuilt/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    device/samsung/jflte/prebuilt/lib/libgeofence.so:system/lib/libgeofence.so \
    device/samsung/jflte/prebuilt/lib/libhdcp2.so:system/lib/libhdcp2.so \
    device/samsung/jflte/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/samsung/jflte/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/samsung/jflte/prebuilt/lib/libmercury.so:system/lib/libmercury.so \
    device/samsung/jflte/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/samsung/jflte/prebuilt/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/samsung/jflte/prebuilt/lib/libmmosal.so:system/lib/libmmosal.so \
    device/samsung/jflte/prebuilt/lib/libmmparser.so:system/lib/libmmparser.so \
    device/samsung/jflte/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/samsung/jflte/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/samsung/jflte/prebuilt/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    device/samsung/jflte/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/samsung/jflte/prebuilt/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    device/samsung/jflte/prebuilt/lib/libqdi.so:system/lib/libqdi.so \
    device/samsung/jflte/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    device/samsung/jflte/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/samsung/jflte/prebuilt/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    device/samsung/jflte/prebuilt/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    device/samsung/jflte/prebuilt/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    device/samsung/jflte/prebuilt/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    device/samsung/jflte/prebuilt/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    device/samsung/jflte/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/samsung/jflte/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/jflte/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/samsung/jflte/prebuilt/lib/libsam.so:system/lib/libsam.so \
    device/samsung/jflte/prebuilt/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/jflte/prebuilt/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/jflte/prebuilt/lib/libsensirion_j1.so:system/lib/libsensirion_j1.so \
    device/samsung/jflte/prebuilt/lib/libtime_genoff.so:system/lib/libtime_genoff.so \
    device/samsung/jflte/prebuilt/lib/libvdis.so:system/lib/libvdis.so \
    device/samsung/jflte/prebuilt/lib/libwvm.so:system/lib/libwvm.so

# Adreno
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libGLESv2S3D_adreno.so:system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libplayback_adreno.so:system/vendor/lib/egl/libplayback_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/samsung/jflte/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/samsung/jflte/prebuilt/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/samsung/jflte/prebuilt/vendor/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    device/samsung/jflte/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/samsung/jflte/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/samsung/jflte/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    device/samsung/jflte/prebuilt/vendor/lib/libc2d30.so:system/vendor/lib/libc2d30.so \
    device/samsung/jflte/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/samsung/jflte/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so \
    device/samsung/jflte/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    device/samsung/jflte/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    device/samsung/jflte/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/samsung/jflte/prebuilt/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/samsung/jflte/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Device Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115 \
    wifi.interface=wlan0 \
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
    persist.fuse_sdcard=true \
    ro.emmc.sdcard.partition=17 \
    ro.use_data_netmgrd=true \
    persist.data.ds_fmc_app.mode=0 \
    persist.ims.regmanager.mode=0 \
    ro.config.ehrpd=true \
    persist.omh.enabled=1 \
    persist.data_netmgrd_nint=16 \
    lpa.decode=true \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    keyguard.no_require_sim=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
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
    dalvik.vm.dexopt-data-only=0 \
    qcom.hw.aac.encoder=true \
    af.resampler.quality=255 \
    ro.config.vc_call_vol_steps=7 \
    ro.ksm.default=1 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    ro.telephony.ril_class=SamsungQualcommRIL \
    ro.telephony.call_ring.multiple=0

# Device Tags
PRODUCT_TAGS += dalvik.gc.type-precise

# Device Density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
