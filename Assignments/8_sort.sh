#!/bin/bash

darr=($@) #Values of all arguments store in darr
arr=("${darr[@]:1}") #access index values from position 1 
len=$(($#-1)) #get the length of all arguments
temp=0
if [ $# -gt 0 ] #check arguments is pass or not
then
    if [ $1 = "-a" -o $1 = "-d" ] #check 1st argument is -a or -d
    then
	for j in `seq 0 $((len-1))` #scan length of arguments from 0 to len-1
	do
	    for i in `seq 0 $((len-j-2))` 
	    do
		if [ ${arr[$i]} -gt ${arr[$((i+1))]} ]
		then
		    temp=${arr[$i]}
		    arr[$i]=${arr[$((i+1))]}
		    arr[$((i+1))]=$temp
		fi
	    done
	done
	if [ $1 = "-a" ]
	then
	    echo Ascending order of array is ${arr[@]}
	else
	    rev_arr=()
	    rev_ind=0
	    
	    for index in `seq $len -1 0`
	    do
		rev_arr[$rev_ind]=${arr[$index]}
		rev_ind=$(($rev_ind + 1))
	    done
	    echo Descending order of array is ${rev_arr[@]}
	fi
    else
	echo -e "Error : Please pass the choice.\n Usage : ./sorting -a/-d 4 23 5 6 3"
    fi
else
    echo -e "Error : Please pass the argument through command line.\n Usage : ./sorting -a/-d 4 23 5 6 3"
fi


