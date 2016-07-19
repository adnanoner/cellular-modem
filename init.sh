#!/bin/bash


# Huawei
usb_modeswitch -v 12d1 -p 1f01 --verbose -J

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
