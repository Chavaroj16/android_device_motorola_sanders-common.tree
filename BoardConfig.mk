#
# Copyright (C) 2015-2017 The Android Open-Source Project
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

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8953

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom ehci-hcd.park=3 vmalloc=400M androidboot.bootdevice=7824900.sdhci movablecore=160M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_CUSTOM_BOOTIMG_MK := device/motorola/sanders/mkbootimg.mk
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androidkernel-
TARGET_KERNEL_SOURCE := kernel/motorola/msm8953
TARGET_KERNEL_CONFIG := sanders_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        #    16384 * 1024 mmcblk0p37
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616    #    16484 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296    #  4194304 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25614597120 # 25014255 * 1024 mmcblk0p54

# Recovery
TARGET_RECOVERY_FSTAB := device/motorola/sanders/twrp.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true

# TWRP
BOARD_USES_QCOM_HARDWARE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TW_NEW_ION_HEAP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
