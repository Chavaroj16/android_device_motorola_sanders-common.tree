#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from msm8953-common
$(call inherit-product, device/motorola/msm8953-common/msm8953.mk)

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/imx219_chromatix.xml:system/etc/camera/imx219_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx258_bear_chromatix.xml:system/etc/camera/mot_imx258_bear_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx258_mono_chromatix.xml:system/etc/camera/mot_imx258_mono_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k3l8_bear_chromatix.xml:system/etc/camera/mot_s5k3l8_bear_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k3l8_mono_chromatix.xml:system/etc/camera/mot_s5k3l8_mono_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8953_mot_sanders_camera.xml:system/etc/camera/msm8953_mot_sanders_camera.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h8_chromatix.xml:system/etc/camera/s5k4h8_chromatix.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Thermal
PRODUCTS_COPY_FILES += \
    $(LOCAL_FILES)/configs/thermal-engine-sanders.conf:system/etc/thermal-engine-sanders.conf

