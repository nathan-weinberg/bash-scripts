#!/bin/bash

echo "#######################"
echo "CPU Info:"
echo "#######################"
cat /proc/cpuinfo
echo "#######################"
echo "Memory Info::"
echo "#######################"
cat /proc/meminfo
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
