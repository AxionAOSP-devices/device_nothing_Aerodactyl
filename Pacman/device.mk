#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom common configuration.
$(call inherit-product, device/nothing/Aerodactyl/device-common.mk)

# Axion Burstengine configuration

PRODUCT_COPY_FILES += \
    device/nothing/Aerodactyl/Pacman/configs/axion/ax_perf_boosts.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ax_perf_boosts.xml \
    device/nothing/Aerodactyl/Pacman/configs/axion/ax_perf_resources.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ax_perf_resources.xml \
    device/nothing/Aerodactyl/Pacman/configs/axion/ax_perf_thermal.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ax_perf_thermal.xml \
    device/nothing/Aerodactyl/Pacman/configs/axion/ax_perf_threads.xml:$(TARGET_COPY_OUT_VENDOR)/etc/ax_perf_threads.xml

# Overlays
PRODUCT_PACKAGES += \
    NothingWifiResPacman

# Properties
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/skus/nonPro/,$(TARGET_COPY_OUT_ODM)/etc)

# Inherit the proprietary files
$(call inherit-product, vendor/nothing/Pacman/Pacman-vendor.mk)
