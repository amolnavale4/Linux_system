#!/bin/bash
if [ $# -gt 0 ] #check arguments pass or not
then
    if [ $# -eq 3 ] #check length of arguments equal to 3
    then
	case $2 in  #case of 2nd argument to perform arithmetic operations
	    +) sum=`echo "$1$2$3" | bc`  
		echo "$1 $2 $3 = $sum"
		;;
	    -) sub=`echo "scale = 1;$1$2$3" | bc`
		echo "$1 $2 $3 = $sub"
		;;
	    x) mul=`echo "$1 * $3" | bc`
		echo "$1 $2 $3 = $mul"
		;;
	    /) div=`echo "scale=2 ; $1$2$3"|bc`
		echo $1 $2 $3 = $div
		;;
	esac
    else
	echo -e "Error:Please pass 3 arguments. \n Usage:./arithmatic_calc.sh 2.3 + 6.7"
    fi
else
     echo -e "Error : Please pass the arguments through command line.\n Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi
