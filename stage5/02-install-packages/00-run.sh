#!/bin/bash -e

# Manual install of Arduino IDE 1.8.5
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/opt/arduino"
install -v -o 1000 -g 1000 files/arduino-1.8.5-linuxarm.tar.xz "${ROOTFS_DIR}/opt/arduino/"
on_chroot << EOF
cd /opt/arduino
tar xf arduino-1.8.5-linuxarm.tar.xz 
cd arduino-1.8.5
./install.sh
cd ..
EOF

