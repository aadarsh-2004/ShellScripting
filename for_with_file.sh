#!/bin/bash

FILE="/home/aadarsh/ShellScripting/names.txt"

for name in $(cat $FILE )
do
	echo "Name is : $name"
done
