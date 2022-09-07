#!/bin/bash
if [ $# -gt 0 ]
then
    line=`cat $3 | wc -l`
    req_line=$(($1+$2-1))
    if [ $req_line -le $line ]
    then
       	head -$req_line $3 | tail -$2
    else
	echo "Error: $3 is having only $line lines. file should have atleast $req_line lines"
    fi
else
    echo -e "Error: arguments missing!\nUsage: ./file_filter.sh start_line upto_line filename\nFor eg. ./file_filter.sh 5 5 <file>"
fi   
