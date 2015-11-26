#!/bin/bash

# Huawei
#usb_modeswitch -v 12d1 -p 14fe --verbose -J
# ZTE
usb_modeswitch -v 19d2 -p fff5 --verbose -K

echo "Running lsusb incase you have the wrong PID/VID pair."
lsusb

until [ -c /dev/ttyUSB0 ]
do
      sleep 3
      echo "Waiting for ttyUSB0"
done

wvdial


while :
do
	echo "Running..."
	sleep 60
done
