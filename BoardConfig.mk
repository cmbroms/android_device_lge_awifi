USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/v500/BoardConfigVendor.mk

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := awifi
TARGET_BOARD_PLATFORM := msm8960

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 lpj=67677 androidboot.hardware=awifi vmalloc=600M
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x05000000 --tags_offset 0x04800000
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true

BOARD_CUSTOM_BOOTIMG_MK := device/lge/awifi/releasetools/mkbootimg.mk

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_PREBUILT_KERNEL := device/lge/v500/kernel

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/lge/awifi
TARGET_KERNEL_CONFIG := cmb_defconfig

BOARD_EGL_CFG := device/lge/v500/egl.cfg

## the main variant works... except for video scaling :(
TARGET_QCOM_DISPLAY_VARIANT := mdss
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true

BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP -DLG_CAMERA_HARDWARE -DLPA_DEFAULT_BUFFER_SIZE=512

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
#TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true

# Media
TARGET_QCOM_MEDIA_VARIANT := v4l2

RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB = device/lge/awifi/fstab.awifi
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
ENABLE_LOKI_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RELEASETOOLS_EXTENSIONS := device/lge/awifi/releasetools

COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'
BOARD_USES_QC_TIME_SERVICES := true
