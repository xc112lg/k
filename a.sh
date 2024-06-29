
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
        exit 1
    else
        echo "libdebuginfod.so.1 found at $LIB_PATH. Adding to LD_LIBRARY_PATH..."

        # Extract directory from the library path
        LIB_DIR=$(dirname "$LIB_PATH")

        # Add the directory to LD_LIBRARY_PATH
        export LD_LIBRARY_PATH="$LIB_DIR:$LD_LIBRARY_PATH"
        echo "LD_LIBRARY_PATH updated to include $LIB_DIR"
    fi
else
    echo "libdebuginfod.so.1 found in default library paths."
fi

# Verify if the library is now accessible
if ldconfig -p | grep -q libdebuginfod.so.1; then
    echo "libdebuginfod.so.1 is now accessible."
else
    echo "Failed to make libdebuginfod.so.1 accessible."
    exit 1
fi

echo "All steps completed successfully."
# cd k
# cd android_kernel_lge_msm8996
# chmod +x build.sh
# ./build.sh H872
