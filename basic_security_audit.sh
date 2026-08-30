#!/bin/bash
printf "Basic Security Audit"
printf "\n===SUID Files===\n"
find / -perm 4000 -type f 2>/dev/null
printf "\n===World writable files====\n"
find / -xdev -perm 0002 -not -type d 2>/dev/null 
printf "\n===Files with no owners===\n"
find / -nouser -type f 2>/dev/null
printf "\n===Open ports that are internet accessible===\n"
ss -tlnp | grep "0.0.0.0\|:::"
printf "\n===Checking Firewall===\n"
ufw status
firewall-cmd --list-all
iptables -L -n 2>/dev/null
printf "\n===Last Logins===\n"
last | head -20
