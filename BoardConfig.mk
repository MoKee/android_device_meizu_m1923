#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from meizu sm6150-common
-include device/meizu/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/meizu/m1923

# Assertion
TARGET_OTA_ASSERT_DEVICE := m1923,Note9

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# HAX: Remove ASAP
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Light
SOONG_CONFIG_MEIZU_SM6150_LIGHT_BACKLIGHT_PATH := /sys/class/backlight/panel0-backlight
SOONG_CONFIG_MEIZU_SM6150_LIGHT_MX_LED_PATH := /sys/class/leds/mx-led

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/meizu/m1923/BoardConfigVendor.mk
