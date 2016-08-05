# Device Stuff
$(call inherit-product, device/samsung/jfltetmo/jfltetmo.mk)

# NFC Enhanced
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release Name
PRODUCT_RELEASE_NAME := jfltetmo

# Bootanimation
TARGET_BOOTANIMATION_NAME := 1080

# Device Naming
PRODUCT_DEVICE := jfltetmo
PRODUCT_NAME := cm_jfltetmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-M919
PRODUCT_MANUFACTURER := Samsung

# Device Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=jfltetmo \
    TARGET_DEVICE=jfltetmo \
    PRIVATE_BUILD_DESC="jfltetmo-user 4.4.4 KTU84P M919UVUFOK3 release-keys" \
    BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.4.4/KTU84P/M919UVUFOK3:user/release-keys"
