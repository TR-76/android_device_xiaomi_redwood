#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/redwood

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := redwood

# Kernel
TARGET_KERNEL_CONFIG += vendor/redwood_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    focaltech_touch.ko \
    goodix_core.ko \
    hwid.ko \
    msm_drm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    snd_event_dlkm.ko \
    xiaomi_touch.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Include proprietary files
include vendor/xiaomi/redwood/BoardConfigVendor.mk
