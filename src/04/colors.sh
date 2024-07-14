#!/bin/bash
WHITE='\033[97m'
RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
PURPLE='\033[95m'
BLACK='\033[30m'
BG_WHITE='\033[107m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_BLUE='\033[44m'
BG_PURPLE='\033[105m'
BG_BLACK='\033[40m'
ENDCOLOR='\e[0m'
if [ $PARAM_1 -eq 1 ]; then
BG_1=$BG_WHITE
PRINT_COLOR_1=white
elif [ $PARAM_1 -eq 2 ]; then
BG_1=$BG_RED
PRINT_COLOR_1=red
elif [ $PARAM_1 -eq 3 ]; then
BG_1=$BG_GREEN
PRINT_COLOR_1=green
elif [ $PARAM_1 -eq 4 ]; then
BG_1=$BG_BLUE
PRINT_COLOR_1=blue
elif [ $PARAM_1 -eq 5 ]; then
BG_1=$BG_PURPLE
PRINT_COLOR_1=purple
elif [ $PARAM_1 -eq 6 ]; then
BG_1=$BG_BLACK
PRINT_COLOR_1=black
fi
if [ $PARAM_3 -eq 1 ]; then
BG_2=$BG_WHITE
PRINT_COLOR_3=white
elif [ $PARAM_3 -eq 2 ]; then
BG_2=$BG_RED
PRINT_COLOR_3=red
elif [ $PARAM_3 -eq 3 ]; then
BG_2=$BG_GREEN
PRINT_COLOR_3=green
elif [ $PARAM_3 -eq 4 ]; then
BG_2=$BG_BLUE
PRINT_COLOR_3=blue
elif [ $PARAM_3 -eq 5 ]; then
BG_2=$BG_PURPLE
PRINT_COLOR_3=purple
elif [ $PARAM_3 -eq 6 ]; then
BG_2=$BG_BLACK
PRINT_COLOR_3=black
fi
if [ $PARAM_2 -eq 1 ]; then
FONT_COLOR_1=$WHITE
PRINT_COLOR_2=white
elif [ $PARAM_2 -eq 2 ]; then
FONT_COLOR_1=$RED
PRINT_COLOR_2=red
elif [ $PARAM_2 -eq 3 ]; then
FONT_COLOR_1=$GREEN
PRINT_COLOR_2=green
elif [ $PARAM_2 -eq 4 ]; then
FONT_COLOR_1=$BLUE
PRINT_COLOR_2=blue
elif [ $PARAM_2 -eq 5 ]; then
FONT_COLOR_1=$PURPLE
PRINT_COLOR_2=purple
elif [ $PARAM_2 -eq 6 ]; then
FONT_COLOR_1=$BLACK
PRINT_COLOR_2=black
fi
if [ $PARAM_4 -eq 1 ]; then
FONT_COLOR_2=$WHITE
PRINT_COLOR_4=white
elif [ $PARAM_4 -eq 2 ]; then
FONT_COLOR_2=$RED
PRINT_COLOR_4=red
elif [ $PARAM_4 -eq 3 ]; then
FONT_COLOR_2=$GREEN
PRINT_COLOR_4=green
elif [ $PARAM_4 -eq 4 ]; then
FONT_COLOR_2=$BLUE
PRINT_COLOR_4=blue
elif [ $PARAM_4 -eq 5 ]; then
FONT_COLOR_2=$PURPLE
PRINT_COLOR_4=purple
elif [ $PARAM_4 -eq 6 ]; then
FONT_COLOR_2=$BLACK
PRINT_COLOR_4=black
fi
