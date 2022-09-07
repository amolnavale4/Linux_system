#!/bin/bash
count=0 #declare initialy count 0
len=$# #get the length of passed CLA
if [ $# -gt 0 ] #check CLA pass or not
then
    function rec() #function defination
    {
	arr=($@) #get value of all argumnets in array
	if  [ $count -lt $len ] #check count less than argument length
	then
	    echo $1 #print argument value
	    arr=${arr[@]:1} #store array value at position 1 
	    count=$((count+1)) #increment count
	    rec ${arr[@]} #update rec 
	else
	    return
	fi
    }
else
    echo "Error : Pass the arguments through command line."
fi
rec $@ #function call
