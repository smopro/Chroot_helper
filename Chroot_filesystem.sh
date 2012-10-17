#!/bin/bash
# 上一句用來宣告執行script用的shell
####################################################
# Script程式名稱 | Script Name
# 	Chroot_filesystem.sh
# 著作權宣告 | Copyright Declaration
# 	Ｖ字龍(Vdragon) <pika1021@gmail.com> (c) 2012
# 授權條款宣告 | License Declaration
# 	GNU Lesser General Public License version 3.0 or later
# 	http://www.gnu.org/licenses/lgpl.html
# 傳回值定義 | Return Value Definition
# 	0
# 		正常結束
# 已知問題 | Known Issues
# 	Known issues is now on GitHub
# 	
# 修訂紀錄 | Changelog
# 	Changelog is now on GitHub
# 	
###################################################
# Load common settings
source Common_settings.source.sh

mkdir --parents "${CHROOT_DIRECTORY_NAME}"

mount "${CHROOT_PARTITION}" "${CHROOT_DIRECTORY_NAME}"

mount --bind /dev "${CHROOT_DIRECTORY_NAME}/dev"
mount --bind /dev/pts "${CHROOT_DIRECTORY_NAME}/dev/pts"
mount --bind /proc "${CHROOT_DIRECTORY_NAME}/proc"
mount --bind /sys "${CHROOT_DIRECTORY_NAME}/sys"
mount --bind /run "${CHROOT_DIRECTORY_NAME}/run"

chroot "${CHROOT_DIRECTORY_NAME}"

# 正常結束script程式
exit 0