#!/bin/bash

echo "############"
echo "# CPU Info #"
echo "############"
cat /proc/cpuinfo

echo -e "\n############"
echo "# GPU Info #"
echo "############"
lspci -v | grep 'VGA\|Display'
GPU_COUNT=`lspci -v | grep 'VGA\|Display' | wc -l`
for (( i = 0; i < $GPU_COUNT; i++ )); do
	DRI_PRIME=$i glxinfo | grep "OpenGL renderer"
done

echo -e "\n###############"
echo "# Memory Info #"
echo "###############"
awk '$3=="kB"{$2=$2/1024**2;$3="GB";} 1' /proc/meminfo | column -t

echo -e "\n###################"
echo "# Hard Drive Info #"
echo "###################"
df -h

echo -e "\n##################"
echo "# Partition Info #"
echo "##################"
cat /proc/partitions

echo -e "\n###########"
echo "# OS Info #"
echo "###########"
cat /etc/os-release

echo -e "\n######################"
echo "# Linux Version Info #"
echo "######################"
cat /proc/version
