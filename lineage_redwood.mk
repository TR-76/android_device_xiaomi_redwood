#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Cromite Webview
$(call inherit-product-if-exists, vendor/cromite/cromite.mk)

# microG
$(call inherit-product-if-exists, vendor/microg/config.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Firmware
$(call inherit-product-if-exists, vendor/xiaomi/redwood-firmware/config.mk)

# AxionOS flags
AXION_CAMERA_REAR_INFO := 108,8,2
AXION_CAMERA_FRONT_INFO := 16
AXION_PROCESSOR := Qualcomm®_Snapdragon™_778G_5G

TARGET_EXCLUDES_AUDIOFX := true
TARGET_PREBUILT_BCR := false
TARGET_ENABLE_BLUR := true

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
    BuildDesc="redwood_global-user 14 UKQ1.240624.001 OS2.0.17.0.UMSMIXM release-keys" \
    BuildFingerprint=POCO/redwood_global/redwood:14/UKQ1.240624.001/OS2.0.17.0.UMSMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
