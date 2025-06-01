#!/bin/bash

myvar="Hey Buddy,How are you? "
myvarlength=${#myvar}
echo "length of myvar is ${myvarlength}"

echo "UpperCase is ${myvar^^}"
echo "LowerCase is ${myvar,,}"

#replace words 

echo "Replaced String is ${myvar/Hey/Hello}"



