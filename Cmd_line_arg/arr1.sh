#!/bin/bash
arr=($@)
sum=0
if [ $# -gt 1 ]
then
for i in ${arr[@]}
do
    sum=$((sum + i))
done
echo sum is $sum
else
    echo "Error : pass minimum 2 arguments"
fi
