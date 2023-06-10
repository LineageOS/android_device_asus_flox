#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

ifneq ($(filter flox debx,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
