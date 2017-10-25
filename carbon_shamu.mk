# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-carbon

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
TARGET_MANUFACTURER := Google
TARGET_VENDOR := moto

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Myself5/iamr00t/PatrickC"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F27M/4299435:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F27M 4299435 release-keys"
