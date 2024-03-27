#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from AORO_A11 device
$(call inherit-product, device/aoro/AORO_A11/device.mk)

PRODUCT_DEVICE := AORO_A11
PRODUCT_NAME := omni_AORO_A11
PRODUCT_BRAND := AORO
PRODUCT_MODEL := AORO_A11
PRODUCT_MANUFACTURER := aoro

PRODUCT_GMS_CLIENTID_BASE := android-aoro

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6873v1_64-user 10 QP1A.190711.020 mp2k6885v164P26 release-keys"

BUILD_FINGERPRINT := AORO/AORO_A11/AORO_A11:10/QP1A.190711.020/1608088743:user/release-keys
