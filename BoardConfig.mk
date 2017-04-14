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

# Inherit from common
-include device/intel/cherrytrail-common/BoardConfigCommon.mk

DEVICE_PATH := device/intel/chuwi_hi8pro

# Assert
TARGET_OTA_ASSERT_DEVICE := cht_cr_mrd_w,chuwi_hi8pro,HI8PRO

# Kernel
TARGET_PREBUILT_KERNEL := device/intel/chuwi_hi8pro/kernel
BOARD_KERNEL_BASE := 0x10000000

# Partition sizes
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27783069696

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
