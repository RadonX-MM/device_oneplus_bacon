LOCAL_PATH := device/oneplus/bacon

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := rnx_bacon
PRODUCT_DEVICE := bacon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A0001
PRODUCT_BRAND := oneplus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := bacon
TARGET_VENDOR_DEVICE_NAME := A0001
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=bacon
SKIP_BOOT_JARS_CHECK := true

$(call inherit-product, device/oneplus/bacon/bacon.mk)
$(call inherit-product, device/oneplus/bacon/common.mk)
$(call inherit-product, vendor/oneplus/bacon/bacon-vendor.mk)
$(call inherit-product, vendor/rnx/common.mk)
