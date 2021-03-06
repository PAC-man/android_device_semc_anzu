# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/semc/mogami-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/anzu/config

# Kernel
TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := pac_anzu_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-gnueabihf-linaro-4.7

TARGET_RECOVERY_INITRC := device/semc/anzu/recovery/init.rc

# Sensor
SENSORS_COMPASS_AK8975 := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS9700 := true
SENSORS_PRESSURE_BMP180 := false

TARGET_QCOM_HDMI_OUT := false

BOARD_FLASH_BLOCK_SIZE := 2048

# Assert
TARGET_OTA_ASSERT_DEVICE := LT18i,LT18a,LT15i,LT15a,anzu

#twrp
DEVICE_RESOLUTION := 480x854
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_HAS_NO_RECOVERY_PARTITION := true
TW_FLASH_FROM_STORAGE := true

# inherit from the proprietary version
-include vendor/semc/anzu/BoardConfigVendor.mk
