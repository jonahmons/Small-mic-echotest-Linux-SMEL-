#!/bin/bash

if [ $1 == "on" ];
then
pactl load-module module-loopback latency_msec=1
elif [ $1 == "off" ];
then
pactl unload-module module-loopback
else
echo "-on : enable Test \n"
echo "-off: disable Test \n"
echo "You need to install following package: pavucontrol"
fi