#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Vendor
$(call inherit-product-if-exists, vendor/xiaomi/grus/grus-vendor.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/sdm712-common/sdm712-common-vendor.mk)

# Properties
-include $(LOCAL_PATH)/common-props.mk
-include $(LOCAL_PATH)/device-props.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:system/etc/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/audio_effects.xml:system/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# Custom Doze
PRODUCT_PACKAGES += \
    CustomDoze

# Common init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc

# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData.system \
    libvulkan \
    vendor.display.config@1.0

# Fingerprint
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/fingerprint/android.hardware.biometrics.fingerprint@2.1-service.xiaomi_sdm710.rc:system/etc/init/android.hardware.biometrics.fingerprint@2.1-service.xiaomi_sdm710.rc

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

# IFAA manager
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_sdm710

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Power
PRODUCT_PACKAGES += \
    power.qcom:64

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0:64 \
    android.hardware.nfc@1.1:64 \
    android.hardware.secure_element@1.0:64 \
    com.android.nfc_extras
#    vendor.nxp.nxpnfc@1.0:64

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_xiaomi

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk-sp

# WiFi Display
PRODUCT_PACKAGES += \
    libnl

# xiaomi doze
#PRODUCT_PACKAGES += \
#    XiaomiParts

PRODUCT_BOOT_JARS += \
    WfdCommon \
    QPerformance \
    UxPerformance

# Device fstab
PRODUCT_PACKAGES += \
    fstab.qcom

# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/etc/manifest.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.1-service \
    NfcNci \
    Tag \
    SecureElement \
    Tag \
    android.hardware.secure_element@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/libnfc-nxp.conf:system/etc/nfc/libnfc-nxp.conf

# Bluetooth
PRODUCT_PACKAGES += \
    libbthost_if

# qti telephony
PRODUCT_PACKAGES += \
    qti-telephony-common

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \

# Fingerprint
PRODUCT_PACKAGES += \
    lineage.biometrics.fingerprint.inscreen@1.0-service.xiaomi_grus

# Display calibration
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service.xiaomi

# dirac app
PRODUCT_PACKAGES += \
    Dirac

# Camera
PRODUCT_PACKAGES += \
    Snap

# CNE
PRODUCT_PACKAGES += \
    cneapiclient \
    com.quicinc.cne \
    services-ext

# Config panel
PRODUCT_PACKAGES += \
    ConfigPanel

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perf/perf-profile0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile0.conf
