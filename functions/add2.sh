#!/bin/bash
function add
{
    echo $1
    echo $2
    sum=0

    if [ $# -eq 2 ]
    then 
	sum=$(($1 + $2 ))
	echo sum is $sum
    else 
	echo "error : pass 2 arg's"
    fi
}
add 10 20
#add $1 $2 
#add $@
