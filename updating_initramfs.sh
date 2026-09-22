#!/bin/bash

#Rebuild initramfs for the current kernel
sudo update-initramfs -u

#For a specific kernel
#sudo update-initramfs -u -k kernel-version-here

#adding a module to initramfs
echo "nvme" | sudo tee /etc/initramfs-tools/modules
sudo update-initramfs -u
#Use-case: we need the update the initramfs whenever the kernel needs to access to a driver to recognise hardware

#RHEL/Fedore we use dracut
#to see initramfs content (image content)
sudo lsinitramfs /boot/initrd.img-$(uname -r)
