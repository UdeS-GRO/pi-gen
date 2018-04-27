#!/bin/bash -e

# Copy the wallpaper image, then set it through the file manager config app.

install -v -o 1000 -g 1000 files/udes-logo.png "${ROOTFS_DIR}/usr/share/s3gro/"
on_chroot << EOF
su pi
pcmanfm --set-wallpaper "/usr/share/s3gro/udes-logo.png"
pcmanfm --wallpaper-mode center
EOF
