#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Use direct paths instead of variables to ensure resolution
$(call inherit-product, build/make/target/product/handheld_system.mk)
$(call inherit-product, build/make/target/product/handheld_vendor.mk)
$(call inherit-product, build/make/target/product/languages_full.mk)

DEVICE_PATH := device/lenovo/achilles6_row_wifi

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

#PRODUCT_PACKAGES += \
#    fstab.enableswap \
#    init.connectivity.rc \
#meta_init.rc \
#    factory_init.connectivity.rc \
#    init.modem.rc \
#    init.ago.rc \
#    factory_init.rc \
#    init.aee.rc \
#    multi_init.rc \
#    meta_init.modem.rc \
#    init.mt8768.rc \
#    factory_init.project.rc \
#    init.mt6765.usb.rc \
#    init.project.rc \
#    init.sensor_1_0.rc \
#    meta_init.project.rc \
#    meta_init.connectivity.rc \
#    init.mt6765.rc \
#    ueventd.rc \
#    init.recovery.mt8768.rc \
#    init.recovery.mt6765.rc \
#    init.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Audio policy configuration
USE_XML_AUDIO_POLICY_CONF := 1

# Copy fstab and init scripts to the ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6765:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6765 \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt8768:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt8768 \
    $(DEVICE_PATH)/rootdir/etc/init.mt6765.rc:$(TARGET_COPY_OUT_RAMDISK)/init.mt6765.rc \
    $(DEVICE_PATH)/rootdir/etc/init.mt6765.usb.rc:$(TARGET_COPY_OUT_RAMDISK)/init.mt6765.usb.rc \
    $(DEVICE_PATH)/rootdir/etc/init.mt8768.rc:$(TARGET_COPY_OUT_RAMDISK)/init.mt8768.rc \
    $(DEVICE_PATH)/rootdir/etc/init.project.rc:$(TARGET_COPY_OUT_RAMDISK)/init.project.rc \
    $(DEVICE_PATH)/rootdir/etc/init.connectivity.rc:$(TARGET_COPY_OUT_RAMDISK)/init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/etc/init.sensor_1_0.rc:$(TARGET_COPY_OUT_RAMDISK)/init.sensor_1_0.rc \
    $(DEVICE_PATH)/rootdir/etc/ueventd.rc:root/ueventd.rc \
    $(DEVICE_PATH)/rootdir/etc/init.rc:root/init.rc \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6765:root/fstab.mt6765

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6765:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt6765 \
    $(DEVICE_PATH)/rootdir/etc/init.mt6765.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt6765.usb.rc \
    $(DEVICE_PATH)/rootdir/etc/init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.project.rc \
    $(DEVICE_PATH)/rootdir/etc/init.sensor_1_0.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.sensor_1_0.rc \
    $(DEVICE_PATH)/rootdir/etc/init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/etc/init.ago.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.ago.rc

# recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/init.recovery.mt6765.rc:root/init.recovery.mt6765.rc

# Inherit the proprietary files
# $(call inherit-product, vendor/lenovo/achilles6_row_wifi/achilles6_row_wifi-vendor.mk)
