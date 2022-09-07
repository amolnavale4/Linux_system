#!/bin/bash
if [ $# -eq 1 ]
then
    filesys=(`df -h | tr -s " " | cut -d " " -f 1`) #
    mount=(`df -h | tr -s " " | cut -d " " -f 6`)
    use=(`df -h | tr -s " " | cut -d " " -f 5`)
    avail=(`df -h | tr -s " " | cut -d " " -f 4`)

    len=${#filesys[@]}
    count=0
    for i in `seq $((len-1))`
    do
	if [ "$1" == "${filesys[$i]}" ]
	then
	    echo "File-system $1 is mounted on ${mount[$i]} and is having ${use[$i]} used space with ${avail[$i]} free."
	    count=1
	fi
    done
    if [ $count -eq 0 ]
    then
	echo "$1 is not mounted."
    fi
else
    echo "Error : Please pass the name of the file-system through command line."
fi
