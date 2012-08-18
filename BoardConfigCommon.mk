# Copyright (C) 2009 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := mahimahi

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_USES_GENERIC_AUDIO := false

BOARD_KERNEL_CMDLINE := no_console_suspend=1 wire.search_count=5
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_NEW_PPPOX := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true
BOARD_FORCE_STATIC_A2DP := true
BOARD_USE_SCREENCAP:= true

WITH_JIT := true
ENABLE_JSC_JIT := true
TARGET_WEBCORE_ENABLE_GIF := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8

BOARD_USE_KINETO_COMPATIBILITY := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 3200

BOARD_VENDOR_USE_AKMD := akm8973

BOARD_EGL_CFG := device/htc/passion-common/egl.cfg

BOARD_USE_FROYO_LIBCAMERA := true

BOARD_USES_QCOM_LIBS := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_BOOTIMAGE_PARTITION_SIZE := 3670016
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 272629760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 176422912
BOARD_FLASH_BLOCK_SIZE := 131072

# Set the system image size limit to the full physical space available for eng build
ifeq (eng,$(TARGET_BUILD_VARIANT))
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 272629760
endif

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/htc/passion-common/recovery/recovery_ui.c
I_AM_KOUSH := true

# to enable the GPS HAL
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mahimahi
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200
