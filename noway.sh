#!/bin/bash
rm -rf .repo/local_manifests/
repo init -u https://github.com/ProjectEverest/manifest -b 14 --git-lfs
git clone https://github.com/pys36/local_manifests.git .repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
export TZ=Asia/Kuching
export BUILD_USERNAME=pangys
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES = true
lunch lineage_earth-ap2a-user
mka everest -j$(nproc --all)
