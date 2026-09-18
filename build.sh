#!/bin/bash

set -e

echo "Ceder Linux Build System"
echo "========================="

REQUIRED_TOOLS=("gcc" "make" "git")

echo "Checking required build tools..."

for TOOL in "${REQUIRED_TOOLS[@]}"; do
    if command -v "$TOOL" >/dev/null 2>&1; then
        echo "[OK] $TOOL"
    else
        echo "[ERROR] $TOOL is not installed."
        echo "Please install it before building Ceder Linux."
        exit 1
    fi
done

echo ""
echo "Preparing Ceder Linux build directory..."

mkdir -p build
mkdir -p build/kernel
mkdir -p build/rootfs

echo "[OK] Build directory ready."

echo ""
echo "Ceder Linux build environment is ready."
