#!/bin/bash -e

# Unzip QtCreator config (for toolchain setup mostly).
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/pi/.config"
tar xvf files/QtProject.tar.gz -C "${ROOTFS_DIR}/home/pi/.config/"
chown 1000:1000 "${ROOTFS_DIR}/home/pi/.config" -Rv
