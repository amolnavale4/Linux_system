#!/bin/bash


read -p "Enter the number : " num
K=1
for row in `seq $num`
do
    for col in `seq $row`
    do
	echo -e -n "$((K++)) "
    done
    echo
done
