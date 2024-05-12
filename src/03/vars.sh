#!/bin/bash

timedatectl set-timezone Europe/Moscow
export HOSTNAME=$(hostname)
export TIMEZONE="$(timedatectl | grep / | awk '{printf "%s %s %s", $3, $4, $5}')"
export USER="$(whoami)"
export OS="$(cat /etc/issue | awk '{printf "%s %s %s", $1, $2, $3}')"
export DATE="$(date +"%d %B %Y %H:%M:%S")"
export UPTIME="$(uptime -p | awk '{print$2, $3, $4, $5}')"
export UPTIME_SEC="$(cat /proc/uptime | awk '{print$2 " seconds"}')"
export IP="$(hostname -i)"
export MASK="$(netstat -rn | awk 'FNR == 5 {print$3}')"
export GATEWAY="$(netstat -rn | awk 'FNR == 3 {print$2}')"
export RAM_TOTAL="$(free | awk 'FNR == 2 {printf "%.3f GB", $2/1024/1024}')"
export RAM_USED="$(free | awk 'FNR == 2 {printf "%.3f GB", $3/1024/1024}')"
export RAM_FREE="$(free | awk 'FNR == 2 {printf "%.3f GB", $4/1024/1024}')"
export SPACE_ROOT="$(df /root/ | awk 'FNR == 2 {printf "%.2f MB", $2/1024}')"
export SPACE_ROOT_USED="$(df /root/ | awk 'FNR == 2 {printf "%.2f MB", $3/1024}')"
export SPACE_ROOT_FREE="$(df /root/ | awk 'FNR == 2 {printf "%.2f MB", $4/1024}')"
chmod +x drawing.sh
bash drawing.sh
