#!/bin/bash
rm -rf .repo/local_manifests/
repo init --git-lfs -u https://gitlab.com/CalyxOS/platform_manifest -b android14 --depth=1
git clone https://github.com/pys36/local_manifests.git -b calyx repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
export TZ=Asia/Kuching
export BUILD_USERNAME=pangys
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
. build/envsetup.sh
breakfast earth userdebug
m
