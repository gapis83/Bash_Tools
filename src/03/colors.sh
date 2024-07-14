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
if [ $1 -eq 1 ]; then
BG_1=$BG_WHITE
elif [ $1 -eq 2 ]; then
BG_1=$BG_RED
elif [ $1 -eq 3 ]; then
BG_1=$BG_GREEN
elif [ $1 -eq 4 ]; then
BG_1=$BG_BLUE
elif [ $1 -eq 5 ]; then
BG_1=$BG_PURPLE
elif [ $1 -eq 6 ]; then
BG_1=$BG_BLACK
fi
if [ $3 -eq 1 ]; then
BG_2=$BG_WHITE
elif [ $3 -eq 2 ]; then
BG_2=$BG_RED
elif [ $3 -eq 3 ]; then
BG_2=$BG_GREEN
elif [ $3 -eq 4 ]; then
BG_2=$BG_BLUE
elif [ $3 -eq 5 ]; then
BG_2=$BG_PURPLE
elif [ $3 -eq 6 ]; then
BG_2=$BG_BLACK
fi
if [ $2 -eq 1 ]; then
FONT_COLOR_1=$WHITE
elif [ $2 -eq 2 ]; then
FONT_COLOR_1=$RED
elif [ $2 -eq 3 ]; then
FONT_COLOR_1=$GREEN
elif [ $2 -eq 4 ]; then
FONT_COLOR_1=$BLUE
elif [ $2 -eq 5 ]; then
FONT_COLOR_1=$PURPLE
elif [ $2 -eq 6 ]; then
FONT_COLOR_1=$BLACK
fi
if [ $4 -eq 1 ]; then
FONT_COLOR_2=$WHITE
elif [ $4 -eq 2 ]; then
FONT_COLOR_2=$RED
elif [ $4 -eq 3 ]; then
FONT_COLOR_2=$GREEN
elif [ $4 -eq 4 ]; then
FONT_COLOR_2=$BLUE
elif [ $4 -eq 5 ]; then
FONT_COLOR_2=$PURPLE
elif [ $4 -eq 6 ]; then
FONT_COLOR_2=$BLACK
fi
