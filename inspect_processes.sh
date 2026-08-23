printf "Running Processes Info (ps aux)"

ps aux

printf "Interactive Monitor (top)"

top

printf "\nReturn The PID of a running process (pgrep)"

pgrep sshd

printf "\nReturn the PID of a named program (pidof)\n"

#pidof

printf "\nInspect a specific process (using /proc/pid_number/what_u_looking_for)\n"

PID=$(pgrep sshd | head -1)

cat /proc/$PID/status


