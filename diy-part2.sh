#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 设置默认IP
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
# 清除登录密码
sed -i ' s/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g ' openwrt/package/lean/default-settings/files/zzz-default-settings
#添加额外的软件包
git clone https://github.com/kenzok8/openwrt-packages.git
git clone https://github.com/kenzok8/small-package.git
git clone https://github.com/kenzok8/small.git
#修改机型默认内核
sed -i 's/PATCHVER:=5.15/PATCHVER:=6.0/g' target/linux/x86/Makefile
