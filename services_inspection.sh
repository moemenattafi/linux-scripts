#!/bin/bash


printf "\nList all systemd services\n"
systemctl list-units --type=service --all


printf "\nListing all running services\n" 
systemctl list-units --type=service --state=running


printf "\nListing Failed services (systemctl)\n"
systemctl --failed

printf "\nListing services logs error logs for today if you want since last boot use -b (journalctl)\n"
journalctl -p err --since today 
