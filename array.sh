#!/bin/bash
myArray=(1 2 3 5 30.5 "aadarsh")

echo "${myArray[0]}"
echo "${myArray[*]}"

echo "length of given array is ${#myArray[*]}"

myArray+=(1,1,1,1,1,1,1)

echo "${myArray[*]}"

