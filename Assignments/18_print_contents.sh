#!/bin/bash
arg=$@
if [ $# -gt 0 ]
then
    for i in $arg
    do
	if [ -d $i ]
	then
	    cd $i
	    pwd
	    echo *
	    cd -
	else
	    echo "Cannot access '$1' : No such a file or directory."
	fi
    done
else
    echo *
fi