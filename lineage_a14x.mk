#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a14x device
$(call inherit-product, device/samsung/a14x/device.mk)

PRODUCT_DEVICE := a14x
PRODUCT_NAME := lineage_a14x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A146B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a14xxx-user 14 UP1A.231005.007 A146BXXS3CXC2 release-keys"

BUILD_FINGERPRINT := samsung/a14xxx/a14x:14/UP1A.231005.007/A146BXXS3CXC2:user/release-keys
