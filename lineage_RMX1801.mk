#
# Copyright (C) 2018 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oppo RMX1801
$(call inherit-product, device/oppo/RMX1801/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

PRODUCT_NAME := lineage_RMX1801
PRODUCT_DEVICE := RMX1801
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := RMX1801
TARGET_VENDOR_DEVICE_NAME := RMX1801

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="RMX1801" \
    PRODUCT_NAME="RMX1801" \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1.181121.001 eng.root.20190515.104753 release-keys"

BUILD_FINGERPRINT := "OPPO/RMX1801/RMX1801:9/PKQ1.181121.001/1557495004:user/release-keys"