#!/bin/bash
if [ $# -eq 2 ]
then 
    sum=$(($1 + $2))
    echo Sum is $sum
else
    echo "Error : pass two arg"
fi
