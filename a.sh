#!/bin/bash




sudo apt-get install kmod


cd k
git pull

cd android_kernel_lge_msm8996_r2
chmod +x build.sh
chmod +x copy_finished.sh
./build.sh H872
