#!/bin/bash


read -p "what is your age : " age
read -p "what is you country : " country

#if [[ $age -gt 18   ]] && [[ $country == "india" ]];
if [[ $age -gt 20  ]] || [[ $country == "india" ]];
then
	echo "you can vote"
else
	echo "you cannot vote"
fi
