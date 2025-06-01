#!/bin/bash

echo "----------"
echo "CALCULATOR"
echo "----------"

echo "Press A) for SUM"
echo "Press B) for SUB"
echo "Press C) for MUL"
echo "Press D) for DIV"

read -p "Enter Your Choice: " choice
read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2

sum(){
	let summ=$1+$2;
	echo "Sum of $1 and $2 is $summ"

}

sub(){
	let subb=$1-$2;
	echo "Sub of $1 and $2 is $subb"

}

mul(){
	let mull=$1*$2;
	echo "Mul of $1 and $2 is $mull"

}

div(){
	let divv=$1/$2;
	echo "Division of $1 and $2 is $divv"
}

case $choice in
	a)sum $num1 $num2;;
	b)sub $num1 $num2;;
	c)mul $num1 $num2;;
	d)div $num1 $num2;;
	*) echo "Incorrect Input"
esac

