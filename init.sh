#!/bin/bash

# Huawei
# Web Mode / HiLink
# usb_modeswitch -v 0x12d1 -p 0x1f01 -V 0x12d1 -P 0x14dc -M "55534243123456780000000000000a11062000000000000100000000000000"
# Serial mode
# usb_modeswitch -v 0x12d1 -p 0x1f01 -n -I -M 55534243123456780000000000000011060000000000000000000000000000

# USB mode
usb_modeswitch -v 12d1 -p 1f01 -M '55534243123456780000000000000011062000000100000000000000000000'
# ZTE
# usb_modeswitch -v 19d2 -p fff5 --verbose -K

echo "Running lsusb to show all connected USB PID/VID pairs"
lsusb
# wvdialconf /etc/wvdial.conf

#  ./wvdial_auto_reconnect.sh &

# # Add your application start code from this point onwards

# while :
# do
# 	echo "Running..."
# 	sleep 60
# done
