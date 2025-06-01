#!/bin/bash

echo "A = To see the current date"
echo "B = List all the files in current directory "
read -p "hello choose an option" option

case $option in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide valid input";;
esac



