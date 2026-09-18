#!/bin/bash

set -e

echo "Building Ceder Linux kernel..."

if [ ! -d "linux" ]; then
    echo "Linux kernel source not found."
    echo "Place the Linux kernel source in kernel/linux/"
    exit 1
fi

cd linux

make x86_64_defconfig
make -j"$(nproc)"

echo "Ceder Linux kernel build complete."
