LOCAL_PATH := device/Ulefone/Power_Armor14_Pro

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
 
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := Power_Armor14_Pro
