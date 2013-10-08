#!/bin/bash
# 上一句用來宣告執行script用的shell
####################################################
# Script程式名稱
# Script Name
# 	Script to chroot into a target system
# 著作權宣告
# Copyright Declaration
# 	Ｖ字龍(Vdragon) <pika1021@gmail.com> (c) 2012, 2013
# 授權條款宣告
# License Declaration
# 	GNU Lesser General Public License version 3.0 or later
# 	http://www.gnu.org/licenses/lgpl.html
# 傳回值定義
# Return Value Definition
# 	0
# 		正常結束
# 已知問題
# Known Issues
# 	Known issues is now tracked on GitHub
# 	
# 修訂紀錄
# Changelog
# 	Changelog is now tracked using Git repostiory commit log
# 	
###################################################
# Load common settings
source Common_settings.source.sh

# Prepare root filesystem mountpoint
mkdir --parents "${CHROOT_MOUNTPOINT_NAME}"
mount --options "${CHROOT_TARGET_MOUNT_OPTIONS}" "${CHROOT_TARGET}" "${CHROOT_MOUNTPOINT_NAME}"
cd "${CHROOT_MOUNTPOINT_NAME}"

# Prepare special directory
mount --options bind /dev dev
mount --types devpts pts dev/pts
mount --types proc proc proc
mount --types sysfs sys sys

# Change root to target system
chroot . /bin/sh

# 正常結束script程式
exit 0