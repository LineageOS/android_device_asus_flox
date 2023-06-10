#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# Defined Paths
DEVICE_PATH := device/asus/flox

# Board Info
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := flo
TARGET_BOOTLOADER_NAME := flo

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.flox

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Inherit Common Configuration
include $(DEVICE_PATH)/BoardConfigCommon.mk
