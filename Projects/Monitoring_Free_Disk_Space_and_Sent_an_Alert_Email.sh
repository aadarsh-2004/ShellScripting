#!/bin/bash

FU=$(df  | egrep -v "Filesystem|tmpfs" | grep "nvme0n1p2" | awk '{print $5}' |tr -d %)

To="2004aadarshsoni@gmail.com"
if [[ $FU -ge 20 ]]
then
	echo "Warning Disk space is Low - $FU % " | mail -s "DISK SPACE ALERT"
	$To 

else
	echo "Disk Space is free"

fi
