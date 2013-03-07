# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/anzu/BoardConfigVendor.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/anzu/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := cyanogen_anzu_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

TARGET_RECOVERY_INITRC := device/semc/anzu/recovery/init.rc

# Sensor
SOMC_CFG_SENSORS_COMPASS_AK8975 := yes
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

TARGET_QCOM_HDMI_OUT := false

BOARD_FLASH_BLOCK_SIZE := 2048

# Assert
TARGET_OTA_ASSERT_DEVICE := LT18i,LT18a,LT15i,LT15a,anzu

#Bluetooth	
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/anzu/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/semc/anzu/bluetooth/vnd_anzu.txt
