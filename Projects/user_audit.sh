#!/bin/bash

Report="user_audit_report.csv"

echo "UID,Username,LastLogin,HomeExists,AccountStatus" > "Report"

users=$(awk -F: '$3>=1000 &&  $1 != "nobody" {print $1}' /etc/passwd)

for user in $users;
do
	uid=$(id -u "$user")
	
	last_login=$(lastlog -u "$user" | awk 'NR==2 {if ($4=="**Never") print "Never logged in"; else print $4, $5, $6}')
	
	# Check if home directory exists
    	home_dir=$(getent passwd "$user" | cut -d: -f6)
    	if [[ -d "$home_dir" ]]; then
        	home_exists="Yes"
    	else
        	home_exists="No"
    	fi
	
	# Check account status (active or locked)
    	passwd_status=$(passwd -S "$user" 2>/dev/null)
    	if echo "$passwd_status" | grep -q "L"; then
        	account_status="Locked"
    	else
        	account_status="Active"
    	fi

	echo "$uid,$user,\"$last_login\",$home_exists,$account_status" >> "$Report"
done

echo "User audit report generated"

