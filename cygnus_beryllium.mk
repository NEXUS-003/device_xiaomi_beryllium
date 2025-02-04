#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common CygnusOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/cygnus/configs/common.mk)
$(call inherit-product, device/qcom/common/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cygnus_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi
WITH_GAPPS := true
CYGNUS_BUILD_TYPE := OFFICIAL

BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.220105.007/8030436:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.220105.007 8030436 release-keys" \
    PRODUCT_NAME="beryllium"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-rev1
