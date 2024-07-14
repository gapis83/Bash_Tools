#!/bin/bash
PARAM_1="$(awk -F"=" '/column1_background/{print $2}' ./config.txt)"
PARAM_2="$(awk -F"=" '/column1_font_color/{print $2}' ./config.txt)"
PARAM_3="$(awk -F"=" '/column2_background/{print $2}' ./config.txt)"
PARAM_4="$(awk -F"=" '/column2_font_color/{print $2}' ./config.txt)"
if [[ ($PARAM_1 =~ ^[1-6]+$) && 
($PARAM_2 =~ ^[1-6]+$) && 
($PARAM_3 =~ ^[1-6]+$) && 
($PARAM_4 =~ ^[1-6]+$) ]]
then
SCHEME=1
if [[ ($PARAM_1 -eq $PARAM_2) || ($PARAM_3 -eq $PARAM_4) ]]
then
SCHEME=2
fi
if [[ ($PARAM_1 -gt 10) || ($PARAM_2 -gt 10) || 
($PARAM_3 -gt 10) || ($PARAM_4 -gt 10) ]]
then
SCHEME=2
fi
else
SCHEME=2
fi
if [[ $SCHEME -eq 2 ]]
then
PARAM_1=1
PARAM_2=6
PARAM_3=6
PARAM_4=1
fi
if [[ $SCHEME -eq 1 ]]
then
PRINT_PARAM_1=$PARAM_1
PRINT_PARAM_2=$PARAM_2
PRINT_PARAM_3=$PARAM_3
PRINT_PARAM_4=$PARAM_4
elif [[ $SCHEME -eq 2 ]]
then
PRINT_PARAM_1=default
PRINT_PARAM_2=default
PRINT_PARAM_3=default
PRINT_PARAM_4=default
fi
