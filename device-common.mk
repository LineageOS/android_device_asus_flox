#
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# Inherit Proprietary Files
$(call inherit-product, vendor/asus/flox/flox-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    bdAddrLoader \
    hci_qcomm_init \
    libbt-vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.flox.bt.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.flox.bt.sh

# Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@3.2-impl

# Characteristics
PRODUCT_CHARACTERISTICS := tablet,nosdcard

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger_touch

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Dalvik
$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.legacy

# GPS
PRODUCT_PACKAGES += \
    gps.conf \
    gps.msm8960 \
    sap.conf

# Filesystem Tools
PRODUCT_PACKAGES += \
    resize2fs_static

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# IPC Router Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/hs_detect.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/hs_detect.kl \
    $(LOCAL_PATH)/keylayout/keypad_8064.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/keypad_8064.kl \
    $(LOCAL_PATH)/keylayout/pmic8xxx_pwrkey.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(LOCAL_PATH)/keylayout/apq8064-tabla-snd-card_Button_Jack.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
    $(LOCAL_PATH)/keylayout/hs_detect.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/hs_detect.kcm \
    $(LOCAL_PATH)/keylayout/keypad_8064.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/keypad_8064.kcm \
    $(LOCAL_PATH)/keylayout/pmic8xxx_pwrkey.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/pmic8xxx_pwrkey.kcm

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Kickstart
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kickstart_checker.sh:$(TARGET_COPY_OUT_VENDOR)/bin/kickstart_checker.sh

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8960

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sysfs

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl-bcm \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci-20791b05.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci-20791b05.conf

# OMX
PRODUCT_PACKAGES += \
    libOmxVdec \
    libOmxVenc \
    libOmxCore \
    libstagefrighthw

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay/packages/apps/Bluetooth

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.flox

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.flox \
    init.flox.rc \
    init.flox.power.rc \
    init.flox.usb.rc \
    ueventd.rc \
    ueventd.flox.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.devwait.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.devwait.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.devstart.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.devstart.sh

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    sensors.msm8960

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald-flox.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermald.conf

# Touchscreen Calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/touch_dev.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/touch_dev.idc \
    $(LOCAL_PATH)/configs/elan-touchscreen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/elan-touchscreen.idc

# Trust
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service.legacy \
    conn_init \
    dhcpcd.conf \
    hostapd \
    libwfcu \
    wificond \
    WifiOverlay\
    wpa_supplicant \
    wpa_supplicant.conf \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.flox.wifi.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.flox.wifi.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv_debx.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_wlan_nv_debx.bin \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv_flox.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_wlan_nv_flox.bin

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm/arch-arm-armv7-a-neon/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v29.so

# Voice processing
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors
