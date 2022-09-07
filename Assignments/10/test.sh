#!/bin/bash

for i in `ls`
do
    if [ -f $i ]
    then
	file=`echo $i | tr [:upper:] [:lower:]`
	mv -i $i $file
    elif [ -d $i ]
    then
	dir=`echo $i | tr [:lower:] [:upper:]`
	mv -i $i $dir
    fi
done

