#!/bin/bash
. ./data.sh
DD=`date +%d`
MM=`date +%m`
YY=`date +%y`
HH=`date +%H`
MI=`date +%M`
SS=`date +%S`
STATUS=$DD\_$MM\_$YY\_$HH\_$MI\_$SS.status
echo Do you want to write data to a file?[Y/n]
read save
if [ -z "$save" ];
then
echo Error: no arguments
    exit 1
fi
if [ "$save" = "y" ] || [ "$save" = "Y" ]; then
exec 6>&1
exec > $STATUS
. ./data.sh
#else echo no
fi
