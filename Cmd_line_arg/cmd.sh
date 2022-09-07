#!/bin/bash
if [ $# -gt 2 ]
then
    echo filename $0
    echo first arg $1
    echo second arg $2
    echo third arg $3
    echo fourth arg $4

    echo value of arg $@
    echo No. of arg $#
else
    echo "ERROR : Pass min 3 CLA"
fi
