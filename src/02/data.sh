#! /bin/bash
echo HOSTNAME = $(hostname)
timedatectl | awk '/zone/ {print "TIMEZONE =", $3, "UTC", $5/100}'
echo USER = $USER
awk '{print "OS = "$1, $2, $3}' /etc/issue | head -1
echo DATE = $(date +"%d %b %Y %T")
uptime | awk '/up/{print "UPTIME = " $0}'
awk '{print "UPTIME_SEC = " $1}' /proc/uptime
hostname -I | awk '{print "IP = " $1}'
. ./network.sh
ip r | awk '/default/{print "GATEWAY =", $3}'
free -m | awk '/Mem/{printf "RAM_TOTAL = %.3fGb\n", $2/1024}'
free -m | awk '/Mem/{printf "RAM_USED = %.3fGb\n", $3/1024}'
free -m | awk '/Mem/{printf "RAM_FREE = %.3fGb\n", $4/1024}'
df -kT /root/ | awk '/ubuntu/{printf "SPACE_ROOT = %.2fMb\n", $3/1024}'
df -kT /root/ | awk '/ubuntu/{printf "SPACE_ROOT_USED = %.2fMb\n", $4/1024}'
df -kT /root/ | awk '/ubuntu/{printf "SPACE_ROOT_FREE = %.2fMb\n", $5/1024}'
