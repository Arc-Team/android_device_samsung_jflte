# Vendor
BOARD_VENDOR := samsung
TARGET_SPECIFIC_HEADER_PATH := device/samsung/jfltetmo/include

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true

# Flags for Krait CPU
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 zcache msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/jfltetmo
TARGET_KERNEL_CONFIG := jf_tmo_defconfig
TARGET_KERNEL_VARIANT_CONFIG := cyanogen_jf_defconfig
TARGET_KERNEL_SELINUX_CONFIG := jfselinux_defconfig

# Audio
BOARD_HAVE_DOCK_USBAUDIO := true
BOARD_HAVE_AUDIENCE_ES325_2MIC := true
BOARD_USES_SEPERATED_VOIP := true
BOARD_USES_SEPERATED_HEADSET_MIC := true
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_FLUENCE_FOR_VOIP := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
BOARD_EGL_CFG := device/samsung/jfltetmo/proprietary/vendor/lib/egl/egl.cfg

# Wifi
WIFI_BAND := 802_11_ABG
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HAVE_SAMSUNG_WIFI := true
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/bcmdhd_p2p.bin"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/jfltetmo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/jfltetmo/bluetooth/vnd_jf.txt
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Assert
TARGET_OTA_ASSERT_DEVICE := jfltetmo

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_USES_CM_POWERHAL := true

# Disable initlogo
TARGET_NO_INITLOGO := true

# Samsung's nonstandard csd-client
BOARD_HAVE_SAMSUNG_CSDCLIENT := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Use seperate speakerphone device
BOARD_USES_SEPERATED_VOICE_SPEAKER := true

# Chargers
BOARD_CHARGER_RES := device/samsung/jfltetmo/charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"

# Camera
TARGET_NEED_CAMERA_ZSL := true
TARGET_NEED_SAMSUNG_MAGIC_ZSL_1508 := true
TARGET_ADD_ISO_MODE_1600 := true
TARGET_ADD_ISO_MODE_HJR := true
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# NFC
BOARD_HAVE_NFC := true
BOARD_NFC_HAL_SUFFIX := msm8960

TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/jfltetmo

BOARD_HARDWARE_CLASS := hardware/samsung/cmhw

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/jfltetmo/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/samsung/jfltetmo/rootdir/etc/fstab.qcom

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Adreno
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE := false

# Needed for blobs
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Override healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# Kernel time optimization
# temp remove - causing issues with short/long presses
# KERNEL_HAS_GETTIMEOFDAY_HELPER := true

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/samsung/jfltetmo/sepolicy

BOARD_SEPOLICY_UNION += \
	file_contexts \
	app.te \
	bluetooth.te \
	device.te \
	domain.te \
	drmserver.te \
	file.te \
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
