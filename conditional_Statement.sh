#!/bin/bash


read -p "Enter your marks : " marks

if [[ $marks -gt 80 ]]; 
then
	echo "First Division"
elif [[ $marks -ge 60 ]];
then
	echo "Second Division"
else
	echo "Fail"
fi

