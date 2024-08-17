#!/bin/bash

# check_libdebuginfod() {
#     ldconfig -p | grep -q libdebuginfod.so.1
# }

# echo $(nproc --all)
# # Update package lists
# echo "Updating package lists..."
# sudo apt-get update

# # Install elfutils package
# echo "Installing elfutils package..."
# sudo apt-get install -y elfutils
# sudo apt-get install -y kmod
# # Check if libdebuginfod.so.1 exists in the default library paths
# if ! check_libdebuginfod; then
#     echo "libdebuginfod.so.1 not found in default library paths. Searching for the library..."

#     # Find the location of libdebuginfod.so.1
#     LIB_PATH=$(find / -name libdebuginfod.so.1 2>/dev/null | head -n 1)

#     if [ -z "$LIB_PATH" ]; then
#         echo "libdebuginfod.so.1 not found on the system."
#         echo "Attempting to download and build elfutils from source..."

#         # Install necessary build dependencies
#         sudo apt-get install -y build-essential autoconf automake libtool pkg-config wget bzip2

#         # Download and build elfutils from source with debuginfod disabled
#         ELFUTILS_VERSION="0.186"
#         ELFUTILS_TAR="elfutils-${ELFUTILS_VERSION}.tar.bz2"
#         ELFUTILS_DIR="elfutils-${ELFUTILS_VERSION}"

#         wget "https://sourceware.org/elfutils/ftp/${ELFUTILS_VERSION}/${ELFUTILS_TAR}"
#         if [ $? -ne 0 ]; then
#             echo "Failed to download elfutils."
#             exit 1
#         fi

#         tar -xjf "${ELFUTILS_TAR}"
#         if [ $? -ne 0 ]; then
#             echo "Failed to extract elfutils."
#             exit 1
#         fi

#         cd "${ELFUTILS_DIR}"
#         ./configure --disable-debuginfod
#         if [ $? -ne 0 ]; then
#             echo "Failed to configure elfutils."
#             exit 1
#         fi

#         make
#         if [ $? -ne 0 ]; then
#             echo "Failed to build elfutils."
#             exit 1
#         fi

#         sudo make install
#         if [ $? -ne 0 ]; then
#             echo "Failed to install elfutils."
#             exit 1
#         fi

#         # Update the library cache
#         sudo ldconfig

#         # Check again if libdebuginfod.so.1 exists in the default library paths
#         if check_libdebuginfod; then
#             echo "libdebuginfod.so.1 successfully installed and found."
#         else
#             echo "Failed to install and locate libdebuginfod.so.1."
#             exit 1
#         fi

#         # Cleanup
#         cd ..
#         rm -rf "${ELFUTILS_DIR}" "${ELFUTILS_TAR}"
#     else
#         echo "libdebuginfod.so.1 found at $LIB_PATH. Adding to LD_LIBRARY_PATH..."

#         # Extract directory from the library path
#         LIB_DIR=$(dirname "$LIB_PATH")

#         # Add the directory to LD_LIBRARY_PATH
#         export LD_LIBRARY_PATH="$LIB_DIR:$LD_LIBRARY_PATH"
#         echo "LD_LIBRARY_PATH updated to include $LIB_DIR"
#     fi
# else
#     echo "libdebuginfod.so.1 found in default library paths."
# fi

# # Verify if the library is now accessible
# if check_libdebuginfod; then
#     echo "libdebuginfod.so.1 is now accessible."
# else
#     echo "Failed to make libdebuginfod.so.1 accessible."
#     exit 1
# fi
# echo $PWD
# echo "All steps completed successfully."
cp -r  k/toolchains $HOME/toolchains


export GH_TOKEN=$(cat ../gh_token.txt)

if ! command -v gh &> /dev/null; then
    echo "GitHub CLI 'gh' not found. Downloading and installing..."
    wget https://github.com/cli/cli/releases/download/v2.40.1/gh_2.40.1_linux_amd64.tar.gz
    tar -xvf gh_2.40.1_linux_amd64.tar.gz
    sudo mv gh_*_linux_amd64/bin/gh /usr/local/bin/
    echo "GitHub CLI 'gh' installed successfully."
else
    echo "GitHub CLI 'gh' is already installed."
fi










git clone https://github.com/xc112lg/android_kernel_lge_msm8996_r2 --depth 1 -b patch-5

cd android_kernel_lge_msm8996_r2
git pull

#sed -i '/while ! make -C "$RDIR" O=$BDIR -j"$THREADS"; do/,/done/c\echo "Build failed. Aborting."\nexit 1\n' build.sh


#sed -i '/if \[ "$ASK_CLEAN" = "yes" \]; then/,/else # Always clean build folder for next build on build_all/d' build.s##h


# sleep 1 && git fetch https://github.com/xc112lg/android_kernel_lge_msm8996_r2.git patch-2
# sleep 1 && git cherry-pick 64331eaa542f52d94789f701325ff9508c4b59dc
#sed -i 's/select SND_SOC_MSM_HDMI_CODEC_RX if ARCH_MSM8996/select SND_SOC_MSM_HDMI_CODEC_RX/' sound/soc/msm/Kconfig
sed -i '/select SND_SOC_MSM_HDMI_CODEC_RX if ARCH_MSM8996/d' sound/soc/msm/Kconfig

chmod +x build.sh
chmod +x copy_finished.sh
./build.sh H872

ls
./copy_finished.sh




