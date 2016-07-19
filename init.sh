#!/bin/bash

/usr/bin/sg_raw /dev/sr0 11 06 20 00 00 00 00 00 01 00

ifconfig eth1 192.168.123.100

# Huawei
usb_modeswitch -v 12d1 -p 1f01 -M '55534243123456780000000000000011062000000100000000000000000000' --verbose -J

# ZTE
# usb_modeswitch -v 19d2 -p fff5 --verbose -K

echo "Running lsusb to show all connected USB PID/VID pairs"
lsusb
wvdialconf /etc/wvdial.conf

#  ./wvdial_auto_reconnect.sh &

# # Add your application start code from this point onwards

# while :
# do
# 	echo "Running..."
# 	sleep 60
# done
