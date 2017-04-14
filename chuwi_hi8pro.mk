#
# Copyright (C) 2016 The CyanogenMod Project
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
#
COMMON_PATH := device/intel/chuwi_hi8pro

# Inherit from common
$(call inherit-product, device/intel/cherrytrail-common/cherrytrail.mk)

DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

$(call inherit-product-if-exists, vendor/intel/chuwi_hi8pro/chuwi_hi8pro-vendor.mk)

PRODUCT_AAPT_PREF_CONFIG := hdpi

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(COMMON_PATH)/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(COMMON_PATH)/prebuilt/system,system)
