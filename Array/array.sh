#!/bin/bash

arr=()

echo "Enter the size of array : "
read -a arr

index=0

while [ $index -lt  ${arr[@]} ]
do
    echo enter the array elments
    read arr[index]
    index= $((index + 1))
done
echo all the elements of array is ${arr[@]}

