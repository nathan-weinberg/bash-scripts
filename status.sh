#!/bin/bash

echo "#######################"
echo "CPU Info:"
echo "#######################"
cat /proc/cpuinfo
echo "#######################"
echo "Memory Info::"
echo "#######################"
awk '$3=="kB"{$2=$2/1024**2;$3="GB";} 1' /proc/meminfo | column -t
echo "#######################"
echo "Hard Drive Info:"
echo "#######################"
df -h
echo "#######################"
echo "Partition Info:"
echo "#######################"
cat /proc/partitions
echo "#######################"
echo "Version Info:"
echo "#######################"
cat /proc/version
