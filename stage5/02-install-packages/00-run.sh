#!/bin/bash -e

# Manual install of Arduino IDE 1.8.5
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/tmp/arduino-1.8.5"
tar xf files/arduino-1.8.5-linuxarm.tar.xz -C "${ROOTFS_DIR}/tmp/arduino-1.8.5"
on_chroot << EOF
cd /tmp/arduino-1.8.5
./install.sh
rm -rf /tmp/arduino-1.8.5
EOF

