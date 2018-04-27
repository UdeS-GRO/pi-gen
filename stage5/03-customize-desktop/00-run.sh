#!/bin/bash -e

# Annotate the UdeS logo with the current date (with ImageMagick)
convert files/udes-logo.png label:"Généré: `date`" -append files/udes-bg.png

# Copy the wallpaper image, then set it through the file manager config app.
install -v -o 1000 -g 1000 files/udes-bg.png "${ROOTFS_DIR}/usr/share/s3gro/"

on_chroot << EOF
su pi
pcmanfm --set-wallpaper "/usr/share/s3gro/udes-bg.png"
pcmanfm --wallpaper-mode center
EOF
