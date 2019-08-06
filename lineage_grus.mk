#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/grus/device.mk)

TARGET_APPS_ARCH := arm64
$(call inherit-product, vendor/lineage/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/cepheus_eea/cepheus:9/PKQ1.181121.001/V10.2.15.0.PFAEUXM:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="grus-user 9 PKQ1.181121.001 9.6.27 release-keys" \
    PRODUCT_NAME="grus" \
    TARGET_DEVICE="grus"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# GApps
IS_PHONE := true
#include vendor/gapps/config.mk