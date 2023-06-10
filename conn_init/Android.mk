#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

ifneq ($(filter flox debx,$(TARGET_DEVICE)),)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libwfcu
LOCAL_SRC_FILES := wfc_util_fctrl.c \
                   wfc_util_common.c
LOCAL_CFLAGS := -Wall \
                -Werror
LOCAL_CFLAGS += -DCONFIG_LGE_WLAN_WIFI_PATCH
ifeq ($(BOARD_HAS_QCOM_WLAN), true)
LOCAL_SRC_FILES += wfc_util_qcom.c
LOCAL_CFLAGS += -DCONFIG_LGE_WLAN_QCOM_PATCH
LOCAL_CFLAGS += -DWLAN_CHIP_VERSION_WCNSS
endif
LOCAL_SHARED_LIBRARIES := libcutils liblog
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := conn_init.c
LOCAL_SHARED_LIBRARIES := libcutils liblog
LOCAL_SHARED_LIBRARIES += libwfcu
LOCAL_CFLAGS += -Wall -Werror
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := conn_init
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true

# Make sure the symlinks get created as well.
LOCAL_POST_INSTALL_CMD := \
  mkdir -p $(TARGET_OUT_VENDOR)/firmware/wlan/prima/; \
  ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
    $(TARGET_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
  ln -sf /data/misc/wifi/WCNSS_qcom_wlan_nv.bin \
    $(TARGET_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

include $(BUILD_EXECUTABLE)

endif
