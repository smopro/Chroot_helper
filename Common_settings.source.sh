# Chroot_helper common settings
# 	This file contains setting variable used by Chroot_filesystem.sh and Unchroot_filesystem.sh and needed to be edited before running them.
## The filesystem to chroot
CHROOT_TARGET_DEVICE="/dev/device_file?"

## The directory name to mount the filesystem at
CHROOT_MOUNTPOINT_NAME="Chrooted_filesystem_root_directory"

## Mount options to mount the chrooted filesystem
CHROOT_TARGET_MOUNT_OPTIONS="suid,exec,dev,rw"
