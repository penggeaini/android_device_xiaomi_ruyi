$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_NAME := omni_ruyi
PRODUCT_DEVICE := ruyi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2405CPX3DC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_COPY_FILES += \
    device/xiaomi/ruyi/twrp.fstab:recovery/root/etc/twrp.fstab