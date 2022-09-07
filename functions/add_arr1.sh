#!/bin/bash
function add
{
    sum=0
    for i in $@
    do
	sum=$((sum + i))
    done
    echo sum is $sum
}

add $@
