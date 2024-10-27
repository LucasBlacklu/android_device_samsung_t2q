# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Init
PRODUCT_PACKAGES += \
    init.t2q.rc

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResT2q

# Reovery firmware
PRODUCT_COPY_FILES += \
    vendor/samsung/t2q/proprietary/vendor/firmware/y792_t2.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/y792_t2.bin \
    vendor/samsung/t2q/proprietary/vendor/firmware/y792_t2.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/y792_t2.bin

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/t2q/t2q-vendor.mk)
