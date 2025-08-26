#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from redwood device
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# microG
$(call inherit-product-if-exists, vendor/microg/config.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Cromite Webview
$(call inherit-product-if-exists, vendor/cromite/cromite.mk)

# Firmware
$(call inherit-product-if-exists, vendor/xiaomi/redwood-firmware/config.mk)

# AxionOS flags
AXION_CAMERA_REAR_INFO := 108,8,2
AXION_CAMERA_FRONT_INFO := 16
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_PREBUILT_BCR := false

AXION_PROCESSOR := Qualcomm_Snapdragon_778G_5G
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7
AXION_CPU_BG := 0-2
AXION_CPU_FG ?= 0-7
AXION_CPU_LIMIT_BG := 0-1
AXION_ALL_CORES ?= 0-7
AXION_CPU_LIMIT_UI ?= 0-4
AXION_CPU_DISPLAY ?= 4-7

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22101320G
PRODUCT_NAME := lineage_redwood

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := redwood_global
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="redwood_global-user 14 UKQ1.240624.001 OS2.0.9.0.UMSMIXM release-keys" \
    BuildFingerprint=POCO/redwood_global/redwood:14/UKQ1.240624.001/OS2.0.9.0.UMSMIXM:user/release-keys \
    BuildFlavor=redwood_global-user \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
