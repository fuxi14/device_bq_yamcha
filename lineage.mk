#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from yamcha device.
$(call inherit-product, device/bq/yamcha/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_BRAND := bq
PRODUCT_DEVICE := yamcha
PRODUCT_NAME := lineage_yamcha
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris U2
TARGET_VENDOR := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=yamcha \
   PRIVATE_BUILD_DESC="yamcha_bq-user 8.1.0 OPM1.171019.026 2011 release-keys"

BUILD_FINGERPRINT := bq/yamcha/yamcha:8.1.0/OPM1.171019.026/2011:user/release-keys
