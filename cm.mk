# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/jfltetmo/jfltetmo.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := jfltetmo

PRODUCT_DEVICE := jfltetmo
PRODUCT_NAME := jfltetmo
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-M919
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.3/JSS15J/M919UVUEMK2:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.3 JSS15J M919UVUEMK2 release-keys"
