#!/bin/bash
if [ "$1" == "" ]
then
echo "Usage: pingscan.sh [network]"
echo "Example: pingscan.sh 192.168.0"
else
for x in `seq 1 254`; do
ping -c 1 -i 0.1 $1.$x | grep "64 bytes" &
done
fi
