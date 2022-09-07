#!/bin/bash
read -p "Enter the number : " num
for row in `seq $num`
do
    for col in `seq $row`
    do
	echo -e -n "$col "
    done
    echo
done
