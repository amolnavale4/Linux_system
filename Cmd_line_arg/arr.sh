#!/bin/bash
arr=($@)
sum=0
if [ $# -gt 0 ]
then
    for var in ${arr[@]}
    do
	sum=$((sum+var))
    done
    echo sum is $sum
else
    echo "Error : pass arguments"
fi
