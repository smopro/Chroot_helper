Available languages: Chinese(Traditional), English

Chroot 助手
===========
幫你 chroot 一個 Unix 系統的一些 script 程式

授權條款宣告
------------------
GNU Lesser General Public License version 3.0 or later  
http://www.gnu.org/licenses/lgpl.html

使用說明
------------------
1. 下載原始程式碼並解壓縮
2. 切換當前工作目錄(CWD)到 Chroot_helper 名稱的目錄中，編輯 Common_settings.source.sh 設定檔
3. 在該目錄的終端機下以 root 身份執行 bash Chroot_filesystem.sh ，若一切順利則會成功得到被 chroot 的系統的 shell
4. 執行 exit 離開 chroot shell，以 root 身份執行 bash Unchroot_filesystem.sh ，若一切順利則會將被 chroot 的系統的檔案系統成功卸載。

注意事項
------------------
* 若 x86 64 位元處理器架構系統要 chroot 一個 x86 32 位元系統需改為執行 linux32 bash Chroot_filesystem.sh，否則被 chroot 的系統將會錯認自己為 x86 64 位元的系統！
    * 可以在被 chroot 的系統中執行 getconf LONG_BIT 命令來判斷被 chroot 的系統的處理器架構版本
* 本工具僅在 Ubuntu GNU/Linux 作業系統散佈版本 12.04 以上版本下測試過，其他散佈版本跟較新／舊版本 Linux 作業系統核心的系統可能不適用！

------------------------------------------------

Chroot Helper
===========
Scripts to help you chroot a Unix system.

Tutorial
-----------
To be translated, drop an issue if you need it ;)

Caveats
-------------------
To be translated, drop an issue if you need it ;)

License Declaration
------------------
GNU Lesser General Public License version 3.0 or later  
http://www.gnu.org/licenses/lgpl.html
