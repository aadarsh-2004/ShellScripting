#!/bin/bash

FreeSpac=$(free -mt | grep "Total" | awk '{print $4}')

Limit=500

if [[ $FreeSpac -lt $Limit ]];
then
	echo "WARNING, RAM is Running Low"
	
else
	echo "RAM Space is Sufficient $FreeSpac M"
fi
