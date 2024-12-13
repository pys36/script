#!/bin/bash
rm -rf .repo/local_manifests/
git clone https://github.com/pys36/local_manifests.git .repo/local_manifests
repo init -u https://github.com/ProjectEverest/manifest -b 14 --git-lfs
/opt/crave/resync.sh
. build/envsetup.sh
export TZ=Asia/Kuching
export BUILD_USERNAME=pangys
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=1
lunch lineage_earth-user
mka everest -j$(nproc --all)
