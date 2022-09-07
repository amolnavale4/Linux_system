#!/bin/bash
if [ $# -gt 0 ]
then
    for i in `ls *.jpg`
    do
	if [ -f $i ]
	then
	    digit=`echo $i | tr -cd [:digit:]`
	    new="$1$digit.jpg"
	    mv $i $new
	fi
    done
else
    echo "Error : Please pass the prefix name through command line."
fi
