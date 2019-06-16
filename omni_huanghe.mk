#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := huanghe

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_huanghe
PRODUCT_DEVICE := huanghe
PRODUCT_MANUFACTURER := Huami
PRODUCT_BRAND := Huami
PRODUCT_MODEL := Amazfit Sports Watch

TARGET_VENDOR_PRODUCT_NAME := huanghe
TARGET_VENDOR_DEVICE_NAME := huanghe
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=watch \
    PRODUCT_NAME=huanghe \
    BUILD_FINGERPRINT=Huami/huangheUS/watch:5.1/LMY47D/18:user/release-keys
# use Huami/huanghe/watch:5.1/LMY47D/67:user/release-keys  for the chinese one

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.huami.model=A1612 \
    ro.build.huami.version=00000003
 # use A1602 for the chinese one