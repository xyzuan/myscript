#!/bin/bash
export KBUILD_BUILD_USER=ayy
export KBUILD_BUILD_HOST=diyanto
# Compile plox
function compile() {
    make -j$(nproc) O=out ARCH=arm64 ginkgo-perf_defconfig
    make -j$(nproc) ARCH=arm64 O=out \
                               CROSS_COMPILE=aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=arm-linux-gnueabi-
}
compile
