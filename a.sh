#!/bin/bash


source  k/fix.sh
cp -r  k/toolchains $HOME/toolchains



if ! command -v gh &> /dev/null; then
    echo "GitHub CLI 'gh' not found. Downloading and installing..."
    wget https://github.com/cli/cli/releases/download/v2.40.1/gh_2.40.1_linux_amd64.tar.gz
    tar -xvf gh_2.40.1_linux_amd64.tar.gz
    sudo mv gh_*_linux_amd64/bin/gh /usr/local/bin/
    echo "GitHub CLI 'gh' installed successfully."
else
    echo "GitHub CLI 'gh' is already installed."
fi


export GH_TOKEN=$(cat gh_token.txt)



if ! gh auth status &> /dev/null; then
    # User not authenticated, perform login
    gh auth login --with-token $GH_TOKEN
else
    echo "Already authenticated with GitHub."
fi



#rm -rf Evolution-X
#git clone https://$GH_TOKEN@github.com/xc112lg/Evolution-X.git
rm Evolution-X/*.zip
# rm -rf android_kernel_lge_msm8996_r2
# git clone https://github.com/xc112lg/android_kernel_lge_msm8996_r2 --depth 1 -b patch-6

cd android_kernel_lge_msm8996_r2
rm arch/arm64/configs/lge_msm8996_defconfig
wget -N -P arch/arm64/configs/ https://raw.githubusercontent.com/xc112lg/android_kernel_lge_msm8996_r2/patch-6/arch/arm64/configs/lge_msm8996_defconfig
#git pull origin patch-6

#sed -i '/while ! make -C "$RDIR" O=$BDIR -j"$THREADS"; do/,/done/c\echo "Build failed. Aborting."\nexit 1\n' build.sh


#sed -i '/if \[ "$ASK_CLEAN" = "yes" \]; then/,/else # Always clean build folder for next build on build_all/d' build.s##h


# sleep 1 && git fetch https://github.com/xc112lg/android_kernel_lge_msm8996_r2.git patch-2
# sleep 1 && git cherry-pick 64331eaa542f52d94789f701325ff9508c4b59dc
#sed -i 's/select SND_SOC_MSM_HDMI_CODEC_RX if ARCH_MSM8996/select SND_SOC_MSM_HDMI_CODEC_RX/' sound/soc/msm/Kconfig
# sed -i '/select SND_SOC_MSM_HDMI_CODEC_RX if ARCH_MSM8996/d' sound/soc/msm/Kconfig

chmod +x build.sh
chmod +x copy_finished.sh
./build.sh H872


./copy_finished.sh

mv out/*.zip ../Evolution-X
cd .. 

source_folder="Evolution-X"
if [ -z "$(find "$source_folder" -type f \( -name "*.zip" -o -name "*.img" \))" ]; then
    echo "No .zip or .img files found in $source_folder or its subdirectories. Exiting."
    exit 1
fi


cd Evolution-X
chmod u+x multi_upload.sh
. multi_upload.sh





