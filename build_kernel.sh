#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export SEC_BUILD_CONF_VENDOR_BUILD_OS=13
SRC_DIR=$(pwd)
TC_DIR=/home/renox/kernel/toolchain/clang
JOBS=$(nproc)
MAKE_PARAMS="-j$JOBS -C $SRC_DIR O=$SRC_DIR/ ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- LLVM=1 CROSS_COMPILE=$TC_DIR/bin/llvm-"
export PATH="$TC_DIR/bin:$PATH"
make $MAKE_PARAMS exynos2100-p3sxxx_defconfig
make $MAKE_PARAMS