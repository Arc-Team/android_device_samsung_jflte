# Vendor
BOARD_VENDOR := samsung
TARGET_SPECIFIC_HEADER_PATH := device/samsung/jflte/include
DEVICE_PACKAGE_OVERLAYS += device/samsung/jflte/overlay

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait

# Flags for Krait CPU
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp

# Wifi
WIFI_BAND := 802_11_ABG
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HAVE_SAMSUNG_WIFI := true
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 zcache msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2
TARGET_KERNEL_SOURCE := kernel/samsung/jf
TARGET_KERNEL_VARIANT_CONFIG := cyanogen_jf_defconfig
TARGET_KERNEL_SELINUX_CONFIG := jfselinux_defconfig
TARGET_KERNEL_CONFIG := jf_eur_defconfig

# Kernel time optimization
#KERNEL_HAS_GETTIMEOFDAY_HELPER := true

# QCOM hardware
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

# Audio
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_FLUENCE_FOR_VOIP := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_HAVE_DOCK_USBAUDIO := true
BOARD_HAVE_AUDIENCE_ES325_2MIC := true
BOARD_USES_SEPERATED_VOIP := true
BOARD_USES_SEPERATED_HEADSET_MIC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/jflte/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/jflte/bluetooth/vnd_jf.txt
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
TARGET_NEED_CAMERA_ZSL := true
TARGET_NEED_SAMSUNG_MAGIC_ZSL_1508 := true
TARGET_ADD_ISO_MODE_1600 := true
TARGET_ADD_ISO_MODE_HJR := true

# Graphics
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE := false
BOARD_EGL_CFG := device/samsung/jflte/prebuilt/vendor/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

# NFC
BOARD_HAVE_NFC := true
BOARD_NFC_HAL_SUFFIX := msm8960

# Use CM PowerHAL by default
TARGET_POWERHAL_VARIANT := cm

# Hardware tunables
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# MDP driver
TARGET_DISPLAY_USE_RETIRE_FENCE := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Initlogo
TARGET_NO_INITLOGO := true

# Time
BOARD_USES_QC_TIME_SERVICES := true

# CSD Client
BOARD_HAVE_SAMSUNG_CSDCLIENT := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_jflte
TARGET_LIBINIT_DEFINES_FILE := device/samsung/jflte/init/init_jflte.c

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/samsung/jflte/rootdir/etc/fstab.qcom

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/jflte/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true

# Charging
BOARD_CHARGER_RES := device/samsung/jflte/charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/jflte/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file.te \
    file_contexts \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    nfc.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    wpa.te \
    wpa_socket.te

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/jflte/releasetools

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Assert
TARGET_OTA_ASSERT_DEVICE := GT-I9505,GT-I9505G,i9505,i9505g,jflte,jflteatt,jfltecan,jfltecri,jfltecsp,jfltespr,jfltetmo,jflteusc,jfltevzw,jfltexx,jfltezm,jgedlte
