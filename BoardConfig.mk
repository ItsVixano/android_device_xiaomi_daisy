#
# Copyright (C) 2017 The LineageOS Project
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

TARGET_KERNEL_VERSION := 4.9

# Inherit from common msm8953-common
-include device/xiaomi/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/daisy

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# Filesystem
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true
TARGET_NO_RECOVERY := true
TARGET_COPY_OUT_VENDOR := vendor

# Fingerprint
SOONG_CONFIG_XIAOMI_MSM8953_BIOMETRICS_HAL_MODULES := \
    fingerprint,fpc \
    gf_fingerprint,goodix

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := daisy_defconfig

# Lights
SOONG_CONFIG_XIAOMI_MSM8953_LIGHTS_WHITE_LED := true

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_HAS_REMOVABLE_STORAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/wakeup_gesture"

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2021-07-01

# SEpolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/vendor/sepolicy

# Inherit from the proprietary version
-include vendor/xiaomi/daisy/BoardConfigVendor.mk
