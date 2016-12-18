# Inherit AOSCP common bits
$(call inherit-product, vendor/aoscp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aoscp/configs/telephony.mk)

# Inherit AOSP device configuration for d855
$(call inherit-product, device/lge/d855/full_d855.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d855
PRODUCT_NAME := aoscp_d855
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D855
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_global_com" \
    BUILD_FINGERPRINT="lge/g3_global_com/g3:6.0/MRA58K/15351124649f4:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_global_com-user 6.0 MRA58K 15351124649f4 release-keys"