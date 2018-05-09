#!/bin/bash -e


# Copy the wallpaper image, then set it through the file manager config app.
install -v files/udes-logo.png "${ROOTFS_DIR}/tmp/"
mkdir -p ${ROOTFS_DIR}/home/pi/.config/pcmanfm/LXDE-pi/
install -v -o 1000 -g 1000 files/desktop-items-0.conf ${ROOTFS_DIR}/home/pi/.config/pcmanfm/LXDE-pi/

on_chroot << EOF
# Annotate the UdeS logo with the current date (with ImageMagick)
mkdir -p /usr/share/s3gro/
convert /tmp/udes-logo.png label:"Généré: `date`" -append /usr/share/s3gro/udes-bg.png
rm /tmp/udes-logo.png
EOF
