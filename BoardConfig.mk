# 架构
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := kryo
TARGET_CPU_VARIANT_RUNTIME := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a   # 注意这里改为了 armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

# 内核
TARGET_PREBUILT_KERNEL := device/xiaomi/ruyi/kernel

# 内核命令行
BOARD_KERNEL_CMDLINE := console=ttynull stack_depot_disable=on cgroup_disable=pressure kvm-arm.mode=protected bootconfig ioremap_guard kpti=0 swiotlb=noforce kernel.panic_on_rcu_stall=1 service_locator.enable=1 rcupdate.rcu_expedited=1 rcu_nocbs=0-7 irqaffinity=0-1 cpufreq.default_governor=performance sysctl.kernel.sched_pelt_multiplier=4 cgroup.memory=nokmem,nosocket printk.console_no_auto_verbose=0 loop.max_part=7 ufs_qcom.crash_on_ber=n firmware_class.path=/vendor/firmware_mnt pcie_ports=compat disable_dma32=on slub_debug=- no_debug_objects rootwait ro init=/init silent_boot.mode=nonsilent log_buf_len=2M loglevel=6
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

# 分区大小（保持你原来的）
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x06400000
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xC80000000
BOARD_FLASH_BLOCK_SIZE := 262144

# 动态分区支持
TW_USE_LIBSUPER := true
TW_DYNAMIC_PARTITIONS := true

# Recovery 基础配置
TARGET_RECOVERY_FSTAB := device/xiaomi/ruyi/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true

# 显示与亮度
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel0-backlight/brightness
TW_MAX_BRIGHTNESS := 16383
TW_DEFAULT_BRIGHTNESS := 1024
TW_SCREEN_BLANK_ON_BOOT := true

# 输入设备黑名单
TW_INPUT_BLACKLIST := "hbtp_vm"

# 语言
TW_EXTRA_LANGUAGES := true

# 加密支持
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := 1
TW_USE_FSCRYPT := true

# 关键配置：避免在 root 下生成 etc/vendor
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
BOARD_SUPPORTS_SYSTEM_ROOT := false
TW_NO_LEGACY_PROPS := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_SYSTEM := system

# 支持 64 位应用
TARGET_SUPPORTS_64_BIT_APPS := true

# 其他选项
TW_NO_USB_STORAGE := true
TW_HAS_DOWNLOAD_MODE := false
TW_EXCLUDE_TWRPAPP := true
