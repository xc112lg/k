
#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install elfutils package
echo "Installing elfutils package..."
sudo apt-get install -y elfutils

# Check if libdebuginfod.so.1 exists in the default library paths
if ! ldconfig -p | grep -q libdebuginfod.so.1; then
    echo "libdebuginfod.so.1 not found in default library paths. Searching for the library..."

    # Find the location of libdebuginfod.so.1
    LIB_PATH=$(find / -name libdebuginfod.so.1 2>/dev/null | head -n 1)

    if [ -z "$LIB_PATH" ]; then
        echo "libdebuginfod.so.1 not found on the system."
        echo "Attempting to download and build elfutils from source..."

        # Install necessary build dependencies
        sudo apt-get install -y build-essential autoconf automake libtool pkg-config

        # Download and build elfutils from source
        wget https://sourceware.org/elfutils/ftp/0.186/elfutils-0.186.tar.bz2
        tar -xjf elfutils-0.186.tar.bz2
        cd elfutils-0.186

        ./configure
        make
        sudo make install

        # Update the library cache
        sudo ldconfig

        # Check again if libdebuginfod.so.1 exists in the default library paths
        if ldconfig -p | grep -q libdebuginfod.so.1; then
            echo "libdebuginfod.so.1 successfully installed and found."
        else
            echo "Failed to install and locate libdebuginfod.so.1."
            exit 1
        fi

        # Cleanup
        cd ..
        rm -rf elfutils-0.186 elfutils-0.186.tar.bz2
    else
        echo "libdebuginfod.so.1 found at $LIB_PATH. Adding to LD_LIBRARY_PATH..."

        # Extract directory from the lib

# cd k
# cd android_kernel_lge_msm8996
# chmod +x build.sh
# ./build.sh H872
