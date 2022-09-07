#!/bin/bash
<<DOC
Name : Navale Amol
Date : 26-08-2022

Requirements: -
Fetch user-names from the first field in /etc/passwd file.
Print longest and shortest name.

Sample execution: -
Test Case 1. 
./largest_username.sh 
The Longest Name is: speech-dispatcher
The Shortest Name is:lp
DOC

arr=(`cat /etc/passwd | cut -d ":" -f 1`) #store user-names from the first field in /etc/passwd file in array
longest=${arr[0]} #store first index value in longest
smallest=$longest #store fist index value in smallest
for i in ${arr[@]} 
do
    if [ ${#longest} -lt ${#i} ] #check length of store value in longest is less than index array
    then
	longest=$i #if index value is greter then store in longest
    elif [ ${#smallest} -gt ${#i} ] #check length of store value in smallest is greter than index array
    then
	smallest=$i #if index value is less then store in smallest
    fi
done
echo "The Longest Name is: $longest" #print Largest name
echo "The Shortest Name is:$smallest" #print shortest name
