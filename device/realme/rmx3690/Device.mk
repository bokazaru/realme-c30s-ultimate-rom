# device.mk for Realme C30s Ultimate ROM
# Android 15+ Device Configuration

# Inherit from common device configuration
$(call inherit-product, device/realme/rmx3690/common.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from custom product configuration
$(call inherit-product, vendor/custom/config/common.mk)
$(call inherit-product, vendor/custom/config/audio.mk)
$(call inherit-product, vendor/custom/config/performance.mk)
$(call inherit-product, vendor/custom/config/security.mk)

# Product Identity
PRODUCT_BRAND := realme
PRODUCT_DEVICE := rmx3690
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := Realme C30s
PRODUCT_NAME := custom_rmx3690

# Product Characteristics
PRODUCT_CHARACTERISTICS := default

# Product Versioning
PRODUCT_VERSION_MAJOR := 1
PRODUCT_VERSION_MINOR := 0
PRODUCT_VERSION_MAINTENANCE := 0
CUSTOM_VERSION := Ultimate-15.0-$(shell date +%Y%m%d)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.custom.version=$(CUSTOM_VERSION) \
    ro.custom.buildtype=$(CUSTOM_BUILD_TYPE) \
    ro.custom.maintainer=$(CUSTOM_MAINTAINER)

# Build Info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rmx3690-user 12 SP1A.210812.016 1672899953933 release-keys"

BUILD_FINGERPRINT := realme/rmx3690/rmx3690:12/SP1A.210812.016/1672899953933:user/release-keys

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    device/realme/rmx3690/overlay/common \
    device/realme/rmx3690/overlay/frameworks \
    device/realme/rmx3690/overlay/systemui

PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    device/realme/rmx3690/overlay/common

# Custom Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/custom/overlays/common \
    vendor/custom/overlays/icons \
    vendor/custom/overlays/fonts

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level-2020-03-01.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level-2020-03-01.xml

# Custom Permissions
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/permissions/custom_features.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/custom_features.xml \
    device/realme/rmx3690/configs/permissions/privapp-permissions-custom.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-custom.xml

# Audio Configuration
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    device/realme/rmx3690/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    device/realme/rmx3690/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Custom Audio Mods
PRODUCT_COPY_FILES += \
    vendor/custom/audio/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    vendor/custom/audio/viper/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_viper.xml

# Media Configuration
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    device/realme/rmx3690/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    device/realme/rmx3690/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Keylayout Files
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    device/realme/rmx3690/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl

# IDC Files
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc

# Bluetooth Configuration
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/bluetooth/bt_did.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_did.conf

# WiFi Configuration
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    device/realme/rmx3690/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Thermal Configuration
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/thermal/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Power Configuration
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/power/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Custom Configuration Files
PRODUCT_COPY_FILES += \
    device/realme/rmx3690/configs/performance/performance_config.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/performance_config.xml \
    device/realme/rmx3690/configs/security/security_config.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/security_config.xml

# System Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.sys.sdcardfs=true \
    persist.sys.sf.color_saturation=1.0 \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7

# Vendor Properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true

# Product Packages
PRODUCT_PACKAGES += \
    CustomSettings \
    GameSpace \
    SoundEnhancer \
    ThemePicker \
    PerformanceControl \
    CustomLauncher \
    AudioMods \
    GamingTools \
    SystemTuner

# Custom Apps
PRODUCT_PACKAGES += \
    CustomSettingsProvider \
    GameSpaceProvider \
    PerformanceControlService

# Audio Packages
PRODUCT_PACKAGES += \
    audio.primary.$(PRODUCT_DEVICE) \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.$(PRODUCT_DEVICE) \
    libaudio-resampler \
    libaudioroute \
    libtinyalsa \
    libtinycompress

# Custom Audio Packages
PRODUCT_PACKAGES += \
    DolbyAtmos \
    ViPER4Android

# Display Packages
PRODUCT_PACKAGES += \
    libion \
    libqdMetaData \
    libqdMetaData.system

# Graphics Packages
PRODUCT_PACKAGES += \
    libvulkan

# Network Packages
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Camera Packages
PRODUCT_PACKAGES += \
    Camera2 \
    Snap

# Bluetooth Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    android.hardware.bluetooth@1.0-service \
    android.hardware.bluetooth.audio@2.0-impl

# WiFi Packages
PRODUCT_PACKAGES += \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Thermal Packages
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.rmx3690

# Power Packages
PRODUCT_PACKAGES += \
    android.hardware.power-service.rmx3690

# Sensor Packages
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.0-service.rmx3690

# Fingerprint Packages
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.rmx3690

# Init Scripts
PRODUCT_PACKAGES += \
    init.rmx3690.rc \
    init.rmx3690.perf.rc \
    init.custom.rc \
    ueventd.rmx3690.rc

# Custom Init Scripts
PRODUCT_PACKAGES += \
    init.custom.performance.rc \
    init.custom.audio.rc \
    init.custom.thermal.rc

# Recovery Configuration
PRODUCT_PACKAGES += \
    fastbootd

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/realme/rmx3690/sepolicy/private

# VINTF
PRODUCT_PACKAGES += \
    vintf.xml \
    manifest.xml

# Enable extra locales
PRODUCT_LOCALES += \
    en_US \
    ru_RU \
    uk_UA \
    be_BY \
    kk_KZ

# Exclude packages
PRODUCT_PACKAGES += \
    EmergencyInfo \
    ExactCalculator \
    preinstalled-packages-platform-realme.xml

# Override product properties
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Set this flag in your device if it supports fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/realme/rmx3690/rmx3690-vendor.mk)

# Include additional modules
include device/realme/rmx3690/configs/device_extras.mk

# Custom product packages
include vendor/custom/products/rmx3690.mk

# Feature configuration
include device/realme/rmx3690/configs/features/features.mk
