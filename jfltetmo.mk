# Inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
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

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.bcm2079x.msm8960 \
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
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Misc
PRODUCT_PACKAGES += \
    Torch \
    TimeService \
    libtime_genoff \
    charger_res_images \
    com.android.future.usb.accessory

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.crda.sh \
    init.led.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
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

# Libstagefright
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/jfltetmo/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

# Media
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/jfltetmo/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Thermal
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
    device/samsung/jfltetmo/prebuilt/etc/thermal-engine.conf:system/etc/thermal-engine.conf \
    device/samsung/jfltetmo/prebuilt/etc/thermal-engine-8064ab.conf:system/etc/thermal-engine-8064ab.conf

# GPS/NFC/HOSTS
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/etc/gps.conf:/system/etc/gps.conf \
    device/samsung/jfltetmo/prebuilt/etc/sap.conf:/system/etc/sap.conf \
    device/samsung/jfltetmo/prebuilt/etc/host:system/etc/host \
    device/samsung/jfltetmo/prebuilt/etc/init.d/01dalvik:system/etc/init.d/01dalvik \
    device/samsung/jfltetmo/prebuilt/etc/init.d/04host:/system/etc/init.d/04host \
    device/samsung/jfltetmo/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/samsung/jfltetmo/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    device/samsung/jfltetmo/prebuilt/etc/wifi/bcmdhd_ibss.bin:system/etc/wifi/bcmdhd_ibss.bin \
    device/samsung/jfltetmo/prebuilt/etc/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin \
    device/samsung/jfltetmo/prebuilt/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    device/samsung/jfltetmo/prebuilt/etc/wifi/cred.conf:system/etc/wifi/cred.conf \
    device/samsung/jfltetmo/prebuilt/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/jfltetmo/prebuilt/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/jfltetmo/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/jfltetmo/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Hardware
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/hw/camera.vendor.msm8960.so:system/lib/hw/camera.vendor.msm8960.so \
    device/samsung/jfltetmo/prebuilt/lib/hw/sensorhubs.msm8960.so:system/lib/hw/sensorhubs.msm8960.so \
    device/samsung/jfltetmo/prebuilt/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so

# Binary
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/samsung/jfltetmo/prebuilt/bin/efsks:system/bin/efsks \
    device/samsung/jfltetmo/prebuilt/bin/insthk:system/bin/insthk \
    device/samsung/jfltetmo/prebuilt/bin/irsc_util:system/bin/irsc_util \
    device/samsung/jfltetmo/prebuilt/bin/ks:system/bin/ks \
    device/samsung/jfltetmo/prebuilt/bin/mm-pp-daemon:system/bin/mm-pp-daemon \
    device/samsung/jfltetmo/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/samsung/jfltetmo/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/samsung/jfltetmo/prebuilt/bin/qcks:system/bin/qcks \
    device/samsung/jfltetmo/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/samsung/jfltetmo/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/samsung/jfltetmo/prebuilt/bin/rild:system/bin/rild \
    device/samsung/jfltetmo/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/jfltetmo/prebuilt/bin/thermal-engine:system/bin/thermal-engine \
    device/samsung/jfltetmo/prebuilt/bin/time_daemon:system/bin/time_daemon

# Camera
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/cameradata/M10MO_SFW.bin:system/cameradata/M10MO_SFW.bin \
    device/samsung/jfltetmo/prebuilt/cameradata/RS_M10MO_OL.bin:system/cameradata/RS_M10MO_OL.bin \
    device/samsung/jfltetmo/prebuilt/cameradata/RS_M10MO_OS.bin:system/cameradata/RS_M10MO_OS.bin \
    device/samsung/jfltetmo/prebuilt/cameradata/RS_M10MO_SL.bin:system/cameradata/RS_M10MO_SL.bin \
    device/samsung/jfltetmo/prebuilt/cameradata/RS_M10MO_SS.bin:system/cameradata/RS_M10MO_SS.bin \
    device/samsung/jfltetmo/prebuilt/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    device/samsung/jfltetmo/prebuilt/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    device/samsung/jfltetmo/prebuilt/lib/libadsprpc.so:system/lib/libadsprpc.so \
    device/samsung/jfltetmo/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/samsung/jfltetmo/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/samsung/jfltetmo/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/samsung/jfltetmo/prebuilt/lib/libmercury.so:system/lib/libmercury.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_imx091.so:system/lib/libmmcamera_imx091.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_plugin.so:system/lib/libmmcamera_plugin.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/samsung/jfltetmo/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/samsung/jfltetmo/prebuilt/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/jfltetmo/prebuilt/lib/libvdis.so:system/lib/libvdis.so

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libcsd-client.so:system/lib/libcsd-client.so \
    device/samsung/jfltetmo/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/samsung/jfltetmo/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so

# Chromatix
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx074_video_hd.so:system/lib/libchromatix_imx074_video_hd.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx074_zsl.so:system/lib/libchromatix_imx074_zsl.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx091_default_video.so:system/lib/libchromatix_imx091_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx091_preview.so:system/lib/libchromatix_imx091_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_imx091_video_hd.so:system/lib/libchromatix_imx091_video_hd.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_mt9e013_default_video.so:system/lib/libchromatix_mt9e013_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_mt9e013_preview.so:system/lib/libchromatix_mt9e013_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_mt9e013_video_hfr.so:system/lib/libchromatix_mt9e013_video_hfr.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov2720_hfr.so:system/lib/libchromatix_ov2720_hfr.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov2720_zsl.so:system/lib/libchromatix_ov2720_zsl.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov5647_default_video.so:system/lib/libchromatix_ov5647_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov5647_preview.so:system/lib/libchromatix_ov5647_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov8825_default_video.so:system/lib/libchromatix_ov8825_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov8825_preview.so:system/lib/libchromatix_ov8825_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov9726_default_video.so:system/lib/libchromatix_ov9726_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_ov9726_preview.so:system/lib/libchromatix_ov9726_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k6b2yx_pip.so:system/lib/libchromatix_s5k6b2yx_pip.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k6b2yx_preview.so:system/lib/libchromatix_s5k6b2yx_preview.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k6b2yx_smartstay.so:system/lib/libchromatix_s5k6b2yx_smartstay.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k6b2yx_video.so:system/lib/libchromatix_s5k6b2yx_video.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k6b2yx_vt.so:system/lib/libchromatix_s5k6b2yx_vt.so \
    device/samsung/jfltetmo/prebuilt/lib/libchromatix_s5k6b2yx_vt_hd.so:system/lib/libchromatix_s5k6b2yx_vt_hd.so

# Firmware
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/a300_pfp.fw:system/vendor/firmware/a300_pfp.fw \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/a300_pm4.fw:system/vendor/firmware/a300_pm4.fw \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/bcm2079xB4_firmware.ncd:system/vendor/firmware/bcm2079xB4_firmware.ncd \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/bcm2079xB4_pre_firmware.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware.ncd \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/bcm4335.hcd:system/vendor/firmware/bcm4335.hcd \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/bcm4335_murata.hcd:system/vendor/firmware/bcm4335_murata.hcd \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/bcm4335_semco.hcd:system/vendor/firmware/bcm4335_semco.hcd \
    device/samsung/jfltetmo/prebuilt/vendor/firmware/vidc_1080p.fw:system/vendor/firmware/vidc_1080p.fw

# Adreno
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/egl/libGLESv2S3D_adreno.so:system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libc2d30.so:system/vendor/lib/libc2d30.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libllvm-a3xx.so:system/vendor/lib/libllvm-a3xx.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so

# GPS
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/liblocationservice.so:vendor/lib/liblocationservice.so

# HDCP and IPC
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/etc/sec_config:system/etc/sec_config \
    device/samsung/jfltetmo/prebuilt/etc/srm.bin:system/etc/srm.bin \
    device/samsung/jfltetmo/prebuilt/lib/libhdcp2.so:system/lib/libhdcp2.so

# Media
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libSHIMDivxDrm.so:system/lib/libSHIMDivxDrm.so \
    device/samsung/jfltetmo/prebuilt/lib/libDivxDrm.so:system/lib/libDivxDrm.so \
    device/samsung/jfltetmo/prebuilt/lib/libExtendedExtractor.so:system/lib/libExtendedExtractor.so \
    device/samsung/jfltetmo/prebuilt/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    device/samsung/jfltetmo/prebuilt/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    device/samsung/jfltetmo/prebuilt/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    device/samsung/jfltetmo/prebuilt/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    device/samsung/jfltetmo/prebuilt/lib/libdrmfs.so:system/lib/libdrmfs.so \
    device/samsung/jfltetmo/prebuilt/lib/libdrmtime.so:system/lib/libdrmtime.so \
    device/samsung/jfltetmo/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmosal.so:system/lib/libmmosal.so \
    device/samsung/jfltetmo/prebuilt/lib/libmmparser.so:system/lib/libmmparser.so

# Postprocessing
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libmm-abl-oem.so:system/lib/libmm-abl-oem.so \
    device/samsung/jfltetmo/prebuilt/lib/libmm-abl.so:system/lib/libmm-abl.so

# QMI
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/samsung/jfltetmo/prebuilt/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    device/samsung/jfltetmo/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/samsung/jfltetmo/prebuilt/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    device/samsung/jfltetmo/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so

# Radio
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libatparser.so:system/lib/libatparser.so \
    device/samsung/jfltetmo/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/samsung/jfltetmo/prebuilt/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    device/samsung/jfltetmo/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/samsung/jfltetmo/prebuilt/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    device/samsung/jfltetmo/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/jfltetmo/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/samsung/jfltetmo/prebuilt/lib/libril.so:system/lib/libril.so \
    device/samsung/jfltetmo/prebuilt/lib/libsec-ril.so:system/lib/libsec-ril.so \
    device/samsung/jfltetmo/prebuilt/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so

# Sensors
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libsam.so:system/lib/libsam.so \
    device/samsung/jfltetmo/prebuilt/lib/libsensirion_j1.so:system/lib/libsensirion_j1.so

# Widevine
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/drm/libfwdlockengine.so:system/lib/drm/libfwdlockengine.so \
    device/samsung/jfltetmo/prebuilt/lib/libwvm.so:system/lib/libwvm.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so\
    device/samsung/jfltetmo/prebuilt/vendor/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# Misc
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/liboemcrypto.so:system/lib/liboemcrypto.so \
    device/samsung/jfltetmo/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/samsung/jfltetmo/prebuilt/lib/libthermalclient.so:system/lib/libthermalclient.so

# Time
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/lib/libTimeService.so:system/lib/libTimeService.so \
    device/samsung/jfltetmo/prebuilt/vendor/lib/libtime_genoff.so:system/vendor/lib/libtime_genoff.so

# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/jfltetmo/prebuilt/usr/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Default Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.root_access=3 \
    ro.adb.secure=3 \
    ro.secure=0

# Extra
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.purgeable_assets=1 \
    persist.sys.usb.config=mtp,adb \
    persist.sys.use_16bpp_alpha=1 \
    ro.debuggable=1 \
    ro.ksm.default=1 \
    ro.telephony.call_ring.multiple=0

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.text_cache_width=2048 \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=480

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    mm.enable.smoothstreaming=true \
    media.stagefright.use-awesome=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.ds_fmc_app.mode=0 \
    persist.data_netmgrd_nint=16 \
    persist.omh.enabled=1 \
    persist.radio.add_power_save=1 \
    persist.radio.fill_eons=1 \
    persist.radio.use_se_table_only=1 \
    ro.telephony.ril.config=newDriverCallU,newDialCode

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=255

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115

# Tags
PRODUCT_TAGS += dalvik.gc.type-precise

# Density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
