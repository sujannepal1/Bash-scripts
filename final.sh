#!/bin/sh
echo "Enter Network Device Logical Name eg eth0 :    use ip -a  "
read dname

echo -n "Press 1 if you Want to limit bandwidth, 2 if you want to view the settings and other for remove changes in that the bandwidth:                   "
read VAR

if [[ $VAR -eq 1 ]]; then
    echo "Enter the bandwidth that you want to make of this device in MBPS?   "
    read bandwidth
    MBPS="mbps"
    echo "Enter the network latency that you want to make of this device in ms?   "
    read latency
    ms="ms"
    echo "Enter the packet loss that you want to make of this device from 0to 100%?   "
    read loss

    sudo tcset ${dname} --rate $bandwidth${MBPS} --delay $latency${ms} --loss $loss${per}%
    echo " The badwidth is changed to bandwith of $bandwidth${MBPS}, latency of the device $latency${ms}  , paket loss of this device is $loss${per} "

elif [[ $VAR -eq 2 ]]; then
    sudo tcshow ${dname}
else
    sudo tcdel ${dname} --all
fi
