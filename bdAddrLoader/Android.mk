#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

ifneq ($(filter flox debx,$(TARGET_DEVICE)),)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := addrloader.c
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(TARGET_OUT_HEADERS)/common/inc
LOCAL_SHARED_LIBRARIES := libcutils liblog
LOCAL_CFLAGS += -Wall -Wextra -Werror
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE := bdAddrLoader
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_EXECUTABLE)

endif
