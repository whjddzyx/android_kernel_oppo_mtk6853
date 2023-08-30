#!/bin/bash
export ARCH=arm64
export SUBARCH=arm64
export PATH="/root/Kernel/clang/bin:/root/Kernel/gcc64/bin:/root/Kernel/gcc32/bin:$PATH"


make -j$(nproc --all) CC="ccache clang" O=out ARCH=arm64 CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-android- CROSS_COMPILE_ARM32=arm-linux-androideabi- LD=ld.lld

