#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common cherish stuff.
WITH_GMS := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
CHERISH_BUILD_TYPE := OFFICIAL

# FOD animations
TARGET_WANTS_FOD_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys"

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=Nathaniel_Quitua