#!/bin/bash
if [ $# -lt 4 ]
then
echo Error: Arguments were not enough 
exit 1
fi
if [[ ($1 =~ ^[1-6]+$) && 
($2 =~ ^[1-6]+$) && 
($3 =~ ^[1-6]+$) && 
($4 =~ ^[1-6]+$) ]]
then
:
else
echo Error: Incorrect input
exit 2
fi
if [[ ($1 -lt 1) || ($1 -gt 10) || 
($2 -lt 1) || ($2 -gt 10) || 
($3 -lt 1) || ($3 -gt 10) || 
($4 -lt 1) || ($4 -gt 10) ]]
then
echo Error: Incorrect input
exit 2
fi
if [ $1 -eq $2 ]; then
echo Error: Argument 1 cannot be equal to argument 2. Please change the value and try again
exit 3
fi
if [ $3 -eq $4 ]; then
echo Error: Argument 3 cannot be equal to argument 4. Please change the value and try again
exit 3
fi
. ./colors.sh
. ./data.sh
