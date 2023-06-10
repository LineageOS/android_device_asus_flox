#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# Inherit applicable common Lineage product configuration
$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)

# Inherit common AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device-specific product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Shipping API
$(call inherit-product, vendor/lineage/build/target/product/product_launched_with_j_mr2.mk)

## Device identifier - This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := flox
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := Nexus 7
PRODUCT_NAME := lineage_flox

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"

BUILD_FINGERPRINT := google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys
