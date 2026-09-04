#!/bash/bin
printf "\n===Check For upadates (security updates)===\n"
sudo apt list --upgradable 2>/dev/null | grep -i security
printf "\n===List all installed packages===\n"
dpkg -l
printf "\n===Check which package provides a specifc file===\n"
dpkg -S /usr/bin/python3
