#!/bin/bash
# 上一句用來宣告執行script用的shell
####################################################
# Script程式名稱
# Script Name
# 	unchroot_filesystem.sh
# 著作權宣告
# Copyright Declaration
# 	Ｖ字龍(Vdragon) <pika1021@gmail.com> (c) 2012
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
# 	Known issues is now on GitHub
# 	
# 修訂紀錄
# Changelog
# 	Changelog is now on GitHub
# 	
###################################################
# Load common settings
source Common_settings.source.sh

umount "${CHROOT_DIRECTORY_NAME}/dev/pts"
umount "${CHROOT_DIRECTORY_NAME}/dev"
umount "${CHROOT_DIRECTORY_NAME}/proc"
umount "${CHROOT_DIRECTORY_NAME}/sys"
umount "${CHROOT_DIRECTORY_NAME}/run"

umount "${CHROOT_DIRECTORY_NAME}"

# 正常結束script程式
exit 0