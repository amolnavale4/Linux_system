#!/bin/bash
<<DOC
Name : Navale Amol
Date : 26-08-2022

Requirements: -
Provide a.c file to this script through command-line.
Check the given file exists or not and check if it has some contents in it.
Randomly replace 20% lines from the file with given pattern / string. <-----------Deleted------------>

Sample execution: -
1. ./replace_DEL.sh main.c
Before replacing
#incude <stdio.h>
int main()
{
         printf(“Hello world\n”);
}
After replacing
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
2. ./replace_DEL.sh main1.c
Error : No such a file.
3. ./replace_DEL.sh main2.c
Error : main2.c is empty file. So can’t replace the string.
4. ./replace_DEL.sh
Error : Please pass the file name through command line.
DOC

if [ $# -ne 0 ] #check CLA passed or not
then
    if [ -f $1 ] #check passed arguments files or not
    then
	if [ -s $1 ] #check contents are avaliable in file
	then
	    totalLines=`cat $1 | wc -l` #count total lines from file
	    perc=$((totalLines/5)) #get 20% of calculated lines
	    if [ $totalLines -ge 5 ] #check total lines are greater then or equal to 5
	    then
		for i in `seq 1 $perc` #use to loop number lines getting in %
		do
		    var=`shuf -i 1-$totalLines -n1` #generate random permutation at most count number
		    sed -i "$var s/.*/<-----------Deleted------------>/" $1 #replace 20% lines from the file with given pattern/string
		done
	    fi
	else
	    echo "Error : $1 is a empty file. so can't replace the string."
	fi
    else
	echo "Error : No such a file."
    fi
else
    echo "Error : please pass the file name through command line."
fi


