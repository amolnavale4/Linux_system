#!/bin/bash
arr=($@)
if [ $# -gt 0 ]
then
	for i in ${arr[@]}
	do
  	  	echo "Length of the String ($i) - ${#i}"
	done
    else
	echo "Error : Please pass the arguments through command-line."
fi
