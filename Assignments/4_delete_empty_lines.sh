#!/bin/bash
if [ $# -ne 0 ]
then
    sed -i '/^[[:blank:]]*$/d' $1
    cat $1
else
    echo "pass arguments"
fi
