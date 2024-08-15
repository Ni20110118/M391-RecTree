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

# Inherit from A9 device
$(call inherit-product, device/alps/A9/device.mk)

PRODUCT_DEVICE := A9
PRODUCT_NAME := omni_A9
PRODUCT_BRAND := HK
PRODUCT_MODEL := M391
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k53v1_64_bsp-user 8.1.0 O11019 1683378982 release-keys"

BUILD_FINGERPRINT := T03S/T03S/T03S:8.1.0/O11019/1609328566:user/release-keys
