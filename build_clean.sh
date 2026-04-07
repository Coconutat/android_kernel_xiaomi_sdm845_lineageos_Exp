#!/bin/bash

# 开始运行
echo "开始清理编译残留..."
start_time_sum=$(date +%s)
export PATH="$(pwd)/../Compiler/Google/clang-r547379/bin:$PATH"
export CC=clang
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export CONFIG_BUILD_ARM64_DT_OVERLAY=y

export ARCH=arm64
export SUBARCH=arm64
# export DTC_EXT=dtc

rm -rf out
make CC=clang ARCH=arm64 distclean

end_time_sum=$(date +%s)

# 计算运行时间（秒）
duration=$((end_time_sum - start_time_sum))

# 将秒数转化为 "小时:分钟:秒" 形式输出
hours=$((duration / 3600))
minutes=$(( (duration % 3600) / 60 ))
seconds=$((duration % 60))

# 打印运行时间
echo "脚本运行时间为：${hours}小时 ${minutes}分钟 ${seconds}秒"