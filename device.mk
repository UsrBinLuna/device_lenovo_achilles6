#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Assert
TARGET_OTA_ASSERT_DEVICE := achilles6_row_wifi,x606f,x606fa

# Screen Density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi


# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service \


# Audio
PRODUCT_PACKAGES += \
	android.hardware.audio@2.0-impl \
	android.hardware.audio@2.0-service \
	android.hardware.audio.effect@2.0-impl \
	android.hardware.audio.effect@2.0-service \

# Audio policy configuration
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \

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

# Inherit the proprietary files
# $(call inherit-product, vendor/lenovo/achilles6_row_wifi/achilles6_row_wifi-vendor.mk)
