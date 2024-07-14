#!/bin/bash
z=$1
if  [[ $z =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]
then
echo Error: Incorrect input
    exit 1
elif [ -n "$z" ]
then
. ./print.sh
else
echo Error: No parameters found
    exit 2
fi
