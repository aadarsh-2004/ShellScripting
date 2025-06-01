#!/bin/bash


echo "first argument is $1"
echo "second argument is $2"
echo "-------------------"

echo "All the Arguments are  $@"
echo "No. of Arguments are $#";

echo "-------------------"

for arg in $@
do
	echo "Arguments are $arg"
done
