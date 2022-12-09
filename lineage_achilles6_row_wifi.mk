#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from achilles6_row_wifi device
$(call inherit-product, device/lenovo/achilles6_row_wifi/device.mk)

PRODUCT_DEVICE := achilles6_row_wifi
PRODUCT_NAME := lineage_achilles6_row_wifi
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X606F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_achilles6_row_wifi-user 10 QP1A.190711.020 TB-X606F_U release-keys"

BUILD_FINGERPRINT := samsung/r8qxxx/r8q:10/QP1A.190711.020/G781BXXU1ATJ5:user/release-keys
