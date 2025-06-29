#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A12 device
$(call inherit-product, device/a18/A12/device.mk)

PRODUCT_DEVICE := A12
PRODUCT_NAME := omni_A12
PRODUCT_BRAND := A18
PRODUCT_MODEL := A18
PRODUCT_MANUFACTURER := a18

PRODUCT_GMS_CLIENTID_BASE := android-a18

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_A12-user 7.0 NRD90M 1728571149 release"

BUILD_FINGERPRINT := A18/full_A12/A12:7.0/NRD90M/1728571149:user/release
