#!/bin/bash
read -p "Enter number " num #8
for row in `seq $num` #1
do
    for col in `seq $num` #1 2 3 4 5 6 7 8
    do
	sum=$((row+col))
	if [ $((sum % 2)) -eq 0 ]
	then
	    echo -e -n "\e(47m" " "
	else
	    echo -e -n "\e(40m" " "
	fi
    done
    echo -e "\e[0m" " "
done
