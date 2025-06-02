#!/bin/bash

#script should be execute with sudo/root excess
if [[ "${UID}" -ne 0 ]];
then
	echo "Please run with sudo or root"
	exit 1
fi

#User should pass atleast one argument
if [[ "${#}" -lt 1 ]];
then
	echo "Usage: ${0} USER_NAME [COMMENT]...  "
	echo "Create a user with name USER_NAME  and comment field of COMMENT"
	exit 1
fi

# Store 1st Argument as USER_NAME
USER_NAME="${1}"

# In case of more than one Argument
shift
COMMENT="${@}"

#Create a Password
Password=$(date +%s%N)
echo "$Password"

#Create the user
useradd -c "$COMMENT" -m $USER_NAME 

# Check is user is successfully  created nor not
if [[ $? -ne 0  ]];
then
	echo "ERROR : User Not Created "
	exit 1
fi

# Set the passwor for the user
passwd $Passoword $USER_NAME

#Check Password is Successfully created or not
if [[ $? -ne 0  ]];
then
	echo "Password could not be reset"
	exit 1
fi

# Force Password change on first login
passwd -e $USER_NAME

#Display the username,password,and the host name where the user was created
echo
echo "-------------"
echo "Username : $USER_NAME"
echo "Password : $Password"
echo


