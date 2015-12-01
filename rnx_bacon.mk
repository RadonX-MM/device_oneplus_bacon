# Copyright (C) 2015 The AOSParadox Project
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

# Disable Modules from being optimized
export NO_OPTIMIZATIONS :=\
  libqmiservices \
  libsrec% \
  %loc% \
  %gps% \
  camera_test \
  Find7Parts

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/bacon/device_bacon.mk)

# Inherit RadonX vendor
$(call inherit-product, vendor/rnx/common.mk)

# Use Qualcomm build macros
-include device/oneplus/bacon/utils.mk

PRODUCT_NAME := rnx_bacon
PRODUCT_DEVICE := bacon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A0001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BRAND := oneplus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := bacon
TARGET_VENDOR_DEVICE_NAME := A0001
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=bacon

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=oneplus/bacon/A0001:5.1.1/LMY48B/YOG4PAS1N0:user/release-keys \
    PRIVATE_BUILD_DESC="bacon-user 5.1.1 LMY48B YOG4PAS1N0 release-keys"
endif

# Use extra changes from Settings.Out
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=24m \
    dalvik.vm.heapgrowthlimit=320m \
    dalvik.vm.heapsize=512m \
    wifi.supplicant_scan_interval=300
    
