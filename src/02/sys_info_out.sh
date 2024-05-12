#!/bin/bash

timedatectl set-timezone Europe/Moscow
echo "HOSTNAME = $(hostname)"
echo "TIMEZONE = $(timedatectl | grep / | awk '{printf "%s %s %s", $3, $4, $5}')"
echo "USER = $(whoami)"
echo "OS = $(cat /etc/issue | awk '{printf "%s %s %s", $1, $2, $3}')"
echo "DATE = $(date +"%d %B %Y %H:%M:%S")"
echo "UPTIME = $(uptime -p | awk '{print$2, $3, $4, $5}')"
echo "UPTIME_SEC = $(cat /proc/uptime | awk '{print$2" seconds"}')"
echo "IP = $(hostname -i)"
echo "MASK = $(netstat -rn | awk 'FNR == 5 {print$3}')"
echo "GATEWAY = $(netstat -rn | awk 'FNR == 3 {print$2}')"
echo "RAM_TOTAL = $(free | awk 'FNR == 2 \
{printf "%.3f GB\nRAM_USED = %.3f GB\nRAM_FREE = %.3f GB", \
$2/1024/1024, $3/1024/1024, $4/1024/1024}')"
echo "SPACE_ROOT = $(df /root/ | awk 'FNR == 2 \
{printf "%.2f MB\nSPACE_ROOT_USED = %.2f MB\nSPACE_ROOT_FREE = %.2f MB", \
$2/1024, $3/1024, $4/1024}')"
