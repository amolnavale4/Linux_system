#!/bin/bash
<<DOC
Name : Navale Amol
Date : 26-08-2022

Requirements: -
 Fetch each directories from PATH variable.
 Use -x option in if condition to check executable permission.
 Print directory and number of executable files one-by-one.
 Print the total number of executable files at last.
 Count only files have executable permission.
 Verify path is present every-time.
Sample execution: -
1. ./executable_path.sh
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
DOC


total=0  #initialy count 0
arr=(`echo $PATH | tr ":" "\n"`) #store directories path with new line in array variable
for i in ${arr[@]} #
do
    cd $i #change current directory
    count=0
    for j in `ls` 
    do
	if [ -x $j ] #check file executable or not
	then
	    count=$((count+1)) #increment count
	fi
    done
	total=$((total+count))
	echo "Current dir : $i" #print current directory
	echo "Current count : $count" #print total number of executable files
done
echo "Total = $total" #print total counting executing files
