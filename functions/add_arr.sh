#!/bin/bash

arr=($@)

function add
{
    sum=0
    for i in ${arr[@]}
    do
	sum=`expr $sum + $i`
    done
    echo Sum is $sum
}

add $@
