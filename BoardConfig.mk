#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lime

# Include common platform configs
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := lime,lemon,pomelo

# Kernel - Prebuilt
#BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# NFC
ODM_MANIFEST_SKUS += lemon
ODM_MANIFEST_LEMON_FILES := $(DEVICE_PATH)/manifest/manifest_lemon.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_lime
TARGET_RECOVERY_DEVICE_MODULES := libinit_lime

# Inherit from the proprietary version
include vendor/xiaomi/lime/BoardConfigVendor.mk