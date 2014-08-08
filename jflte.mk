# Inherit
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler

# MSM8960
PRODUCT_PACKAGES += \
    camera.msm8960 \
    gps.msm8960 \
    consumerir.msm8960 \
    lights.msm8960 \
    power.msm8960

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# Loki
PRODUCT_PACKAGES += \
    loki_tool \
    loki.sh \
    loki_bootloaders \
    recovery-transform.sh

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.msm8960 \
    NfcNci \
    Tag \
    com.android.nfc_extras

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader

# Misc
PRODUCT_PACKAGES += \
    qrngd \
    Torch \
    libtime_genoff \
    com.android.future.usb.accessory

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.crda.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    postrecoveryboot.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
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
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/jflte/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

# Media
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/jflte/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Thermal
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
    device/samsung/jflte/prebuilt/etc/thermal-engine.conf:system/etc/thermal-engine.conf

# GPS/NFC/HOSTS
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/gps.conf:/system/etc/gps.conf \
    device/samsung/jflte/prebuilt/etc/host:system/etc/host \
    device/samsung/jflte/prebuilt/etc/init.d/01dalvik:system/etc/init.d/01dalvik \
    device/samsung/jflte/prebuilt/etc/init.d/04host:/system/etc/init.d/04host \
    device/samsung/jflte/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/samsung/jflte/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/samsung/jflte/prebuilt/etc/sap.conf:/system/etc/sap.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_ibss.bin:system/etc/wifi/bcmdhd_ibss.bin \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin \
    device/samsung/jflte/prebuilt/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    device/samsung/jflte/prebuilt/etc/wifi/cred.conf:system/etc/wifi/cred.conf \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/jflte/prebuilt/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/jflte/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/jflte/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Hardware
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/hw/camera.vendor.msm8960.so:system/lib/hw/camera.vendor.msm8960.so \
    device/samsung/jflte/prebuilt/lib/hw/sensorhubs.msm8960.so:system/lib/hw/sensorhubs.msm8960.so \
    device/samsung/jflte/prebuilt/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so

# Binary
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/samsung/jflte/prebuilt/bin/efsks:system/bin/efsks \
    device/samsung/jflte/prebuilt/bin/insthk:system/bin/insthk \
    device/samsung/jflte/prebuilt/bin/irsc_util:system/bin/irsc_util \
    device/samsung/jflte/prebuilt/bin/ks:system/bin/ks \
    device/samsung/jflte/prebuilt/bin/mm-pp-daemon:system/bin/mm-pp-daemon \
    device/samsung/jflte/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/samsung/jflte/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/samsung/jflte/prebuilt/bin/qcks:system/bin/qcks \
    device/samsung/jflte/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/samsung/jflte/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/samsung/jflte/prebuilt/bin/rild:system/bin/rild \
    device/samsung/jflte/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/jflte/prebuilt/bin/thermal-engine:system/bin/thermal-engine \
    device/samsung/jflte/prebuilt/bin/time_daemon:system/bin/time_daemon

# Blobs
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/blobs/cdma/lib/libril.so:system/blobs/cdma/lib/libril.so \
    device/samsung/jflte/prebuilt/blobs/cdma/lib/libsec-ril.so:system/blobs/cdma/lib/libsec-ril.so \
    device/samsung/jflte/prebuilt/blobs/gsm/lib/libril.so:system/blobs/gsm/lib/libril.so \
    device/samsung/jflte/prebuilt/blobs/gsm/lib/libsec-ril.so:system/blobs/gsm/lib/libsec-ril.so \
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
    device/samsung/jflte/prebuilt/lib/libadsprpc.so:system/lib/libadsprpc.so \
    device/samsung/jflte/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/samsung/jflte/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/samsung/jflte/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/samsung/jflte/prebuilt/lib/libmercury.so:system/lib/libmercury.so \
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
    device/samsung/jflte/prebuilt/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/samsung/jflte/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/samsung/jflte/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/samsung/jflte/prebuilt/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/jflte/prebuilt/lib/libvdis.so:system/lib/libvdis.so

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/libcsd-client.so:system/lib/libcsd-client.so \
    device/samsung/jflte/prebuilt/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    device/samsung/jflte/prebuilt/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so

# DRM
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/libdrmdecrypt.so:system/vendor/lib/libdrmdecrypt.so \
    device/samsung/jflte/prebuilt/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
    device/samsung/jflte/prebuilt/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
    device/samsung/jflte/prebuilt/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so

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

# Firmware
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/firmware/a300_pfp.fw:system/vendor/firmware/a300_pfp.fw \
    device/samsung/jflte/prebuilt/vendor/firmware/a300_pm4.fw:system/vendor/firmware/a300_pm4.fw \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm2079xB4_firmware.ncd:system/vendor/firmware/bcm2079xB4_firmware.ncd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm2079xB4_pre_firmware.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware.ncd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335.hcd:system/vendor/firmware/bcm4335.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_murata.hcd:system/vendor/firmware/bcm4335_murata.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_semco.hcd:system/vendor/firmware/bcm4335_semco.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd \
    device/samsung/jflte/prebuilt/vendor/firmware/vidc_1080p.fw:system/vendor/firmware/vidc_1080p.fw

# Adreno
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libGLESv2S3D_adreno.so:system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libplayback_adreno.so:system/vendor/lib/egl/libplayback_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/samsung/jflte/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    device/samsung/jflte/prebuilt/vendor/lib/libc2d30.so:system/vendor/lib/libc2d30.so \
    device/samsung/jflte/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/samsung/jflte/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/samsung/jflte/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/samsung/jflte/prebuilt/vendor/lib/libllvm-a3xx.so:system/vendor/lib/libllvm-a3xx.so \
    device/samsung/jflte/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    device/samsung/jflte/prebuilt/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/samsung/jflte/prebuilt/vendor/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    device/samsung/jflte/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    device/samsung/jflte/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    device/samsung/jflte/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so

# GPS
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/samsung/jflte/prebuilt/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    device/samsung/jflte/prebuilt/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    device/samsung/jflte/prebuilt/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so \
    device/samsung/jflte/prebuilt/vendor/lib/liblocationservice.so:system/vendor/lib/liblocationservice.so

# HDCP and IPC
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/etc/sec_config:system/etc/sec_config \
    device/samsung/jflte/prebuilt/etc/srm.bin:system/etc/srm.bin \
    device/samsung/jflte/prebuilt/lib/libhdcp2.so:system/lib/libhdcp2.so

# Media
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/libdivxdrm.so:system/vendor/lib/libdivxdrm.so \
    device/samsung/jflte/prebuilt/vendor/lib/libExtendedExtractor.so:system/vendor/lib/libExtendedExtractor.so \
    device/samsung/jflte/prebuilt/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    device/samsung/jflte/prebuilt/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so \
    device/samsung/jflte/prebuilt/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    device/samsung/jflte/prebuilt/vendor/lib/libmmparser.so:system/vendor/lib/libmmparser.so

# Postprocessing
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/libmm-abl-oem.so:system/vendor/lib/libmm-abl-oem.so \
    device/samsung/jflte/prebuilt/vendor/lib/libmm-abl.so:system/vendor/lib/libmm-abl.so

# QMI
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    device/samsung/jflte/prebuilt/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so

# Radio
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/libatparser.so:system/lib/libatparser.so \
    device/samsung/jflte/prebuilt/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    device/samsung/jflte/prebuilt/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    device/samsung/jflte/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/jflte/prebuilt/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/jflte/prebuilt/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    device/samsung/jflte/prebuilt/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    device/samsung/jflte/prebuilt/vendor/lib/libnetmgr.so:system/vendor/lib/libnetmgr.so \
    device/samsung/jflte/prebuilt/vendor/lib/libril-qcril-hook-oem.so:system/vendor/lib/libril-qcril-hook-oem.so

# Sensors
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/lib/libsam.so:system/lib/libsam.so \
    device/samsung/jflte/prebuilt/lib/libsensirion_j1.so:system/lib/libsensirion_j1.so

# Widevine
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/samsung/jflte/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/samsung/jflte/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/samsung/jflte/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/samsung/jflte/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# Misc
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so \
    device/samsung/jflte/prebuilt/vendor/lib/libthermalclient.so:system/vendor/lib/libthermalclient.so

# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/jflte/prebuilt/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/jflte/prebuilt/usr/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Device Default Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3 \
    ro.adb.secure=3 \
    ro.secure=0

# Device Properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.sys.usb.config=mtp,adb \
    persist.sys.use_16bpp_alpha=1 \
    persist.timed.enable=true \
    ro.hwui.text_cache_width=2048 \
    ro.ksm.default=1 \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=480 \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.ril_class=SamsungQualcommRIL \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=255

# Device Tags
PRODUCT_TAGS += dalvik.gc.type-precise

# Device Density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
