#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8953-common
$(call inherit-product, device/xiaomi/msm8953-common/common.mk)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/daisy/daisy-vendor.mk)