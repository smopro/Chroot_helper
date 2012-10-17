# The partition to chroot
CHROOT_PARTITION="/dev/sdb1"

# The directory name to mount the partition at
CHROOT_DIRECTORY_NAME="Chrooted_root"

# Mount options to mount the chrooted partition
CHROOT_MOUNT_OPTION="-o suid,exec,rw"
