#!/bin/bash -e

# Manual install of Arduino IDE 1.8.5
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/opt/arduino"
install -v -o 1000 -g 1000 files/arduino-1.8.5-linuxarm.tar.xz "${ROOTFS_DIR}/opt/arduino/"
install -v -o 1000 -g 1000 files/qtcharts.deb "${ROOTFS_DIR}/tmp/"
on_chroot << EOF

dpkg -i /tmp/qtcharts.deb

apt-get -y remove python-pip python3-pip

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install -U platformio

cd /opt/arduino
tar xf arduino-1.8.5-linuxarm.tar.xz 
cd arduino-1.8.5
./install.sh
cd ..

EOF

