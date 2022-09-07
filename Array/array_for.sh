#!/bin/bash

arr=()
echo enter the elements of array 
read -a arr
sum=0
for i in ${arr[@]}
do
    sum=$((sum+i))
done
echo sum is : $sum

