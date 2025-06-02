#!/bin/bash

Report_file="./system_report.txt"

{
# Report Date
echo "===================================================="
echo "🖥️  System Health Report - $(date)"
echo "===================================================="
#Top 5  processes to display
PS=$(ps -eo pid,cmd,%cpu,%mem --sort=-%cpu | head -n 6)
echo "-------------------------------------------------------"
echo
echo "Running Processes are :"
echo "$PS"
echo

#Disk Usage
echo "--------------------------------------------------------"
echo
DU=$(df | egrep -v "Filesystem|tmpfs" | grep n1p2 | awk '{print $5}')
echo "Your Disk Usage is $DU"

#Memory Usage
echo "--------------------------------------------------------"
MU=$(free --mega |egrep -v "Swap")
echo "Your Memory Usage Details are"
echo
echo "$MU"

#SystemUp time
UPT=$(uptime -p)
echo "---------------------------------------------------------"
echo "SystemUp Time"
echo
echo "$UPT"
echo 
echo "---------------------------------------------------------"

#Show last 5 logs
Logs=$(sudo tail -5 /var/log/secure)
echo "---------------------------------------------------------"
echo "Last 5 logs are :"
echo
echo "$Logs"
} > "$Report_file"
