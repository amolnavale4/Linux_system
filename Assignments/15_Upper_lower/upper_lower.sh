#!/bin/bash
if [ $# -gt 0 ]
then
    if [ -s $1 ]
    then
	echo "1 - Lower to Upper"
	echo "2 - Upper to Lower"
	read ch

	case "$ch" in 
	    1) cat $1 | tr [a-z] [A-Z]
		;;
	    2) cat $1 | tr [A-Z] [a-z]
		;;
	esac
	
    else
	echo "Error : No contents inside the file."
    fi
else
    echo "Error : Please pass the file name through command line."
fi
