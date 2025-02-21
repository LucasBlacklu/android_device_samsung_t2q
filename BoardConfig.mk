#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/samsung/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/t2q

# Assert
TARGET_OTA_ASSERT_DEVICE := t2q

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Board
TARGET_BOARD_NAME := SRPTI01B007 

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)
TARGET_KERNEL_CONFIG := vendor/t2q_defconfig

# Security Patch Level
VENDOR_SECURITY_PATCH := 2024-11-01

# Get non-open-source specific aspects
include vendor/samsung/t2q/BoardConfigVendor.mk
