#!/bin/bash

echo "Starting System Inspection\n"

echo "\nOS and system identity (full OS information) :\n"

cat /etc/os-release


echo "\nChecking Kernel Version...\n"

uname -a

echo "\nChecking hostname...\n"

hostname

echo "\nChecking for how long the system kept up and running.\n"

uptime -p

echo "\nChecking display Number: \n"

who

echo "\nHardware Inventory\n "

lscpu

echo "\nChecking Logical CPU:\n"

nproc

echo "\nChecking RAM stats\n:"

free -h

echo "\nChecking ROM stats\n"

cat /proc/meminfo | head -30

echo "\nStorage Information\n"

echo "\nBlock Devices tree (lsblk):\n"

lsblk

echo "\nDisk Usage (df):\n"

df -h

printf "\nDetailed Partition Table (fdisk)\n"

fdisk -l

printf "\nChecking Peripheral Interconnect devices PCI (lspci)\n"

lspci -v

printf "\nListing USB devices (lsusb)\n"

lsusb

printf "\nWhat hardware is loaded as drivers\n"

lsmod































