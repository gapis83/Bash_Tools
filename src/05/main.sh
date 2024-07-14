#!/bin/bash
START=$(date +%s.%N)
z=$1
if [ -n "$z" ]
then
:
else
echo "Error: No parameters found"
exit 3
fi
if [[ $z =~ [[:alnum:]]\/$ ]]
then
if [[ ! -d "$@" ]]; then
    echo >&2 "Error: $@: No such file or directory"
    exit 1
fi
else
echo "Error: Invalid parameter"
exit 2
fi
. ./data.sh
END=$(date +%s.%N)
RUNTIME=$(python3 -c "print('{:.1f}'.format(${END} - ${START}))")
echo "Script execution time (in seconds) = $RUNTIME"
