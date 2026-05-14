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
BOARD_KERNEL_CMDLINE := console=ttynull stack_depot_disable=on cgroup_disable=pressure kasan.page_alloc.sample=10 kasan.stacktrace=off kvm-arm.mode=protected bootconfig ioremap_guard kpti=0 swiotlb=noforce kernel.panic_on_rcu_stall=1 fw_devlink.strict=1 service_locator.enable=1 rcupdate.rcu_expedited=1 rcu_nocbs=0-7 irqaffinity=0-1 cpufreq.default_governor=performance sysctl.kernel.sched_pelt_multiplier=4 no-steal-acc cgroup.memory=nokmem,nosocket printk.console_no_auto_verbose=0 kasan=off service_locator.enable=1 loop.max_part=7 no-steal-acc can.stats_timer=0 ufs_qcom.crash_on_ber=n ftrace_dump_on_oops firmware_class.path=/vendor/firmware_mnt/image,/vendor/firmware_mnt/image/kiwi,/vendor/vm-system/oemvm/boot,/vendor/vm-system/trustedvm/boot pcie_ports=compat disable_dma32=on pci-msm-drv.pcie_sm_regs=0x1D07000,0x1040,0x1048,0x3000,0x2 slub_debug=- video=vfb:640x400,bpp=32,memsize=3072000 swinfo.fingerprint=ruyi:14/OS3.0.302.0.WNICNXM:user mtdoops.fingerprint=ruyi:14/OS3.0.302.0.WNICNXM:user no_debug_objects bootconfig bootinfo.pureason=0x40001 bootinfo.pdreason=0x2 msm_sharedmem.cma_already_panic=0 debug_ext.initrd_size=34985 spidev.bufsiz=16384 hwid.hwid_value=589824 hwid.project=6 hwid.build_adc=65530 hwid.project_adc=34366 msm_drm.dsi_display0=qcom,mdss_dsi_n8_42_02_0a_prim_dsc_cmd: msm_drm.dsi_display1=qcom,mdss_dsi_n8_42_02_0a_sec_p11_dsc_cmd: msm_drm.oled_wp=01f3030002030104 msm_drm.sec_oled_wp=01f8030003030103 msm_drm.debugpolicy=0x20 msm_drm.cell_id=0000000000000 msm_drm.sec_cell_id= rootwait ro init=/init silent_boot.mode=nonsilent log_buf_len=2M loglevel=6 console=ttynull block2mtd.block2mtd=/dev/block/by-name/oops,2097152 mtdoops.mtddev=0 mtdoops.record_size=2097152 mtdoops.dump_oops=1 printk.always_kmsg_dump=1 mtdoops.boot_mode=0 mtdoops.boot_index=457
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
