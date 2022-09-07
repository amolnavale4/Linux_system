#!/bin/bash

if [ $# -gt 0 ]
then
    var=$@
    len=${#var}
    op=${var: -1}
    total=${var:0:1}

    case $op in
	+)
	    for i in `seq $((len-2))`
	    do
		total=$((total+${var:i:1}))
	    done
	       	echo "Sum of digits = $total"
	    ;;
	-)
	    for i in `seq $((len-1))`
	    do
		total=$((total-${var:i:1}))
	    done
	       	echo "Substraction of digits = $total"
	    ;;
	x)
	    for i in `seq $((len-2))`
	    do
		total=`echo "$total * ${var:i:1}" | bc`
	    done
	       	echo "Multiplication of digits = $total"
	    ;;
	/)
	    for i in `seq $((len-2))`
	    do
		total=`echo "scale=2; $total / ${var:i:1}" | bc`
	    done
	       	echo "Division of digits = $total"
	    ;;
	*)
	    echo "Error : Operator missing or invalid operator,please pass operator as last digit(+,-,x,/)"
    esac
else
    echo "Error : Please pass the arguments through CL."
fi
