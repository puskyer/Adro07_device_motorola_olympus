# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)



#use low quality videos
$(call inherit-product, frameworks/base/data/videos/VideoPackage1.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
 
# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Inherit device configuration
$(call inherit-product, device/motorola/olympus/olympus.mk)

## This root
$(call inherit-product, vendor/supersu/supersu.mk)

 
## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := Atrix
PRODUCT_NAME := omni_olympus
PRODUCT_DEVICE := olympus
PRODUCT_MANUFACTURER=motorola

## Device fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=MOTO PRODUCT_NAME=olyatt BUILD_PRODUCT=olyatt BUILD_FINGERPRINT=MOTO/olyatt/olympus:2.3.4/4.5.91/110625:user/release-keys PRIVATE_BUILD_DESC="olympus-user 2.3.4 4.5.91 110625 release-keys"
