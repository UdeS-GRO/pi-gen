#!/bin/bash -e

# DHCP server setup

cat <<EOT >> /etc/dhcpcd.conf
interface eth0
metric 300
static ip_address=192.168.100.100/24
static routers=192.168.100.1
static domain_name_servers=192.168.100.1 8.8.8.8 fd51:42f8:caae:d92e::1
interface wlan0
metric 200
EOT

cat <<EOT >> /etc/dnsmasq.conf
interface=eth0
dhcp-range=192.168.100.99,192.168.100.200,255.255.255.0,12h
EOT

