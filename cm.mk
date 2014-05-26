# CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device stuff
$(call inherit-product, device/samsung/jflte/jflte.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Release Name
PRODUCT_RELEASE_NAME := jflte

# Bootanimation
TARGET_BOOTANIMATION_NAME := 1080

# Device Naming
PRODUCT_DEVICE := jflte
PRODUCT_NAME := cm_jflte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy S4
PRODUCT_MANUFACTURER := Samsung
