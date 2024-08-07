#!/bin/bash




sudo apt-get install kmod
cp -r  k/toolchains $HOME/toolchains
git clone https://github.com/LGE-G5-G6-V20/android_kernel_lge_msm8996_r2 --depth 1 -b swan2000-los21

cd android_kernel_lge_msm8996_r2
git pull

sed -i '/while ! make -C "$RDIR" O=$BDIR -j"$THREADS"; do/,/done/c\echo "Build failed. Aborting."\nexit 1\n' build.sh


sed -i '/if \[ "$ASK_CLEAN" = "yes" \]; then/,/else # Always clean build folder for next build on build_all/d' build.sh


# sleep 1 && git fetch https://github.com/xc112lg/android_kernel_lge_msm8996_r2.git patch-2
# sleep 1 && git cherry-pick 64331eaa542f52d94789f701325ff9508c4b59dc
#sed -i 's/select SND_SOC_MSM_HDMI_CODEC_RX if ARCH_MSM8996/select SND_SOC_MSM_HDMI_CODEC_RX/' sound/soc/msm/Kconfig
sed -i '/select SND_SOC_MSM_HDMI_CODEC_RX if ARCH_MSM8996/d' sound/soc/msm/Kconfig

chmod +x build.sh
chmod +x copy_finished.sh
./build.sh H872
