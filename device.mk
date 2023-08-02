#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# Inherit Common Configuration
$(call inherit-product, $(LOCAL_PATH)/device-common.mk)

# Characteristics
PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-device

# Rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.flox:$(TARGET_COPY_OUT_RAMDISK)/fstab.flox \
    $(LOCAL_PATH)/rootdir/etc/fstab.flox:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.flox
