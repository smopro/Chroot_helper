# Chroot_helper common settings
# 	This file contains setting variable used by Chroot_filesystem.sh and Unchroot_filesystem.sh and needed to be edited before running them.
## The partition to chroot
CHROOT_PARTITION="/dev/device_file?"

## The directory name to mount the partition at
CHROOT_DIRECTORY_NAME="Chrooted_filesystem_root_directory"

## Mount options to mount the chrooted partition
CHROOT_MOUNT_OPTION="-o suid,exec,dev,rw"
