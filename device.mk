#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/fortunalteub/fortunalteub-vendor.mk)

# Inherit from common
BOARD_NFC_CHIPSET := pn547
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/fortunalteub

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/fortunalteub/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml \
	$(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

#NFC
NXP_CHIP_TYPE := 1
PRODUCT_PACKAGES += \
	nfc_nci.pn54x.msm8916

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530M \
	ro.product.device=fortunalteub

