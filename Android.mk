#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),achilles6_row_wifi)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
