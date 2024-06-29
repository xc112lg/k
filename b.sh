# Function to check if the library is available
check_libdebuginfod() {
    ldconfig -p | grep -q libdebuginfod.so.1
}

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install elfutils package
echo "Installing elfutils package..."
sudo apt-get install -y elfutils

# Check if libdebuginfod.so.1 exists in the default library paths
if ! check_libdebuginfod; then
    echo "libdebuginfod.so.1 not found in default library paths. Searching for the library..."

    # Find the location of libdebuginfod.so.1
    LIB_PATH=$(find / -name libdebuginfod.so.1 2>/dev/null | head -n 1)

    if [ -z "$LIB_PATH" ]; then
        echo "libdebuginfod.so.1 not found on the system."
        echo "Attempting to download and build elfutils from source..."

        # Install necessary build dependencies
        sudo apt-get install -y build-essential autoconf automake libtool pkg-config wget bzip2

        # Download and build elfutils from source with debuginfod disabled
        ELFUTILS_VERSION="0.186"
        ELFUTILS_TAR="elfutils-${ELFUTILS_VERSION}.tar.bz2"
        ELFUTILS_DIR="elfutils-${ELFUTILS_VERSION}"

        wget "https://sourceware.org/elfutils/ftp/${ELFUTILS_VERSION}/${ELFUTILS_TAR}"
        if [ $? -ne 0 ]; then
            echo "Failed to download elfutils."
            exit 1
        fi

        tar -xjf "${ELFUTILS_TAR}"
        if [ $? -ne 0 ]; then
            echo "Failed to extract elfutils."
            exit 1
        fi

        cd "${ELFUTILS_DIR}"
        ./configure --disable-debuginfod
        if [ $? -ne 0 ]; then
            echo "Failed to configure elfutils."
            exit 1
        fi

        make
        if [ $? -ne 0 ]; then
            echo "Failed to build elfutils."
            exit 1
        fi

        sudo make install
        if [ $? -ne 0 ]; then
            echo "Failed to install elfutils."
            exit 1
        fi

        # Update the library cache
        sudo ldconfig

        # Check again if libdebuginfod.so.1 exists in the default library paths
        if check_libdebuginfod; then
            echo "libdebuginfod.so.1 successfully installed and found."
        else
            echo "Failed to install and locate libdebuginfod.so.1."
            exit 1
        fi

        # Cleanup
        cd ..
        rm -rf "${ELFUTILS_DIR}" "${ELFUTILS_TAR}"
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
if check_libdebuginfod; then
    echo "libdebuginfod.so.1 is now accessible."
else
    echo "Failed to make libdebuginfod.so.1 accessible."
    exit 1
fi

echo "All steps completed successfully."