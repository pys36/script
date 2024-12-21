#!/bin/bash
rm -rf .repo/local_manifests/
git clone -b cipher https://github.com/pys36/local_manifests.git .repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
export TZ=Asia/Kuching
export BUILD_USERNAME=pangys
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
. build/envsetup.sh
lunch cipher_earth-ap2a-userdebug
mka bacon -j$(nproc --all)
