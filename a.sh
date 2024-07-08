#!/bin/bash




sudo apt-get install kmod

git clone https://github.com/LGE-G5-G6-V20/android_kernel_lge_msm8996_r2 --depth 1 -b swan2000-los21

cd android_kernel_lge_msm8996_r2
git pull
cp -r  ../toolchains $HOME/toolchains
sed -i '/read -rp "Build failed. Retry? "/,/*) ABORT "Compilation aborted." ;;/c\    if ! make -C "$RDIR" O=$BDIR -j"$THREADS"; then\n        echo "Build failed. Aborting."\n        exit 1\n    fi' build.sh
sed -i '/if \[ "$ASK_CLEAN" = "yes" \]; then/,/else/{N;d;}' build.sh
chmod +x build.sh
chmod +x copy_finished.sh
./build.sh H872
