#!/bin/bash
<<DOC
Name : Navale Amol
Date : 26-08-2022

DOC

#check 2 CLA passed or not
if [ $# -eq 2 ]
then
    if [ $1 -lt $2 ]
    then
	#fetch user-ids from the /etc/passwd files
	u_id=(`cat /etc/passwd | cut -d ":" -f3`)
   	count=0 #initially count 0 to count no. of ids present
    	for i in ${u_id[@]} 
    	do
	    if [ $1 -ge $i -a $i -le $2 ] #check $1 is greter than to index value and less than $2
	    then
		count=$((count+1)) #count the no. of user ids present in given range.
	    fi
    	done
	echo "Total count of ID between $1 to $2 is:$count" #print count
    else
	echo "Error : Invalid range. Please enter the valid range through CL."
    fi
else
    echo "Please pass 2 arguments through CL."
fi

