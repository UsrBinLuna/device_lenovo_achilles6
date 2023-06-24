#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.enableswap \
    init.connectivity.rc \
    meta_init.rc \
    factory_init.connectivity.rc \
    init.modem.rc \
    init.ago.rc \
    factory_init.rc \
    init.aee.rc \
    multi_init.rc \
    meta_init.modem.rc \
    init.mt8768.rc \
    factory_init.project.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.project.rc \
    meta_init.connectivity.rc \
    init.mt6765.rc \
    ueventd.rc \
    init.recovery.mt8768.rc \
    init.recovery.mt6765.rc \
    init.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Audio policy configuration
USE_XML_AUDIO_POLICY_CONF := 1



# Inherit the proprietary files
# $(call inherit-product, vendor/lenovo/achilles6_row_wifi/achilles6_row_wifi-vendor.mk)
