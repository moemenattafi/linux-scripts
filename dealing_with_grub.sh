#!/bin/bash

#to see grub settings
cat /boot/default/grub

#After editing the file  we should regenerate the config
sudo update-grub #Ubuntu-debian


#To view current boot parameters
cat /proc/cmdline
