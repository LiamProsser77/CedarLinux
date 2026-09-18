#!/bin/bash

set -e

echo "Building Ceder Linux root filesystem..."

mkdir -p rootfs/bin
mkdir -p rootfs/etc
mkdir -p rootfs/dev
mkdir -p rootfs/proc
mkdir -p rootfs/sys
mkdir -p rootfs/tmp
mkdir -p rootfs/usr/bin
mkdir -p rootfs/var

echo "Compiling Ceder Linux init..."

gcc rootfs/init.c -o rootfs/init

echo "Ceder Linux root filesystem prepared."
