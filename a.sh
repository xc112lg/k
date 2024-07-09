#!/bin/bash




sudo apt-get install kmod
cp -r  k/toolchains $HOME/toolchains
git clone https://github.com/LGE-G5-G6-V20/android_kernel_lge_msm8996_r2 --depth 1 -b swan2000-los21

cd android_kernel_lge_msm8996_r2
git pull

sed -i '/while ! make -C "$RDIR" O=$BDIR -j"$THREADS"; do/,/done/c\echo "Build failed. Aborting."\nexit 1\n' build.sh


sed -i '/if \[ "$ASK_CLEAN" = "yes" \]; then/,/else/{N;d;}' build.sh
chmod +x build.sh
chmod +x copy_finished.sh
./build.sh H872
