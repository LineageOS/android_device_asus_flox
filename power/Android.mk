#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := power_flox.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := power.flox
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
