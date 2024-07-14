#!/bin/bash
part_50="/tmp/part5.txt"
part_51="/tmp/part51.txt"
part_52="/tmp/part52.txt"
part_53="/tmp/part53.txt"
part_54="/tmp/part54.txt"
NUM_FOLDERS="$(find $1 -maxdepth 1 -type d | wc | awk '{print $1}')"
echo -e "Total number of folders (including all nested ones) = $NUM_FOLDERS"

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
du -hx $1 2>/dev/null | sort -rh | head -5 | awk '{printf NR " - %s'/', %s\n", $2, $1}'
ls -laR $1 2>/dev/null | grep "^-" | wc | awk '{print "Total number of files = " $1}'
echo Number of:
find $1 -regex '.*\conf' 2>/dev/null | wc | awk '{print "Configuration files (with the .conf extension) = "$1}'
names=$(du -ah $1 2>/dev/null | sort -rh | awk '{print $2}')
volume=$(du -ah $1 2>/dev/null | sort -rh | awk '{print $1}')
attributes=$(file -b $names)
echo $attributes | sed "s/\,/\n/g"> $part_54
text=$(grep -o -i ASCII $part_54 | wc -l)
echo Text files = $text
exe=$(grep -o -i executable $part_54 | wc -l)
echo Executable files = $exe
find $1 -regex '.*\log' 2>/dev/null | wc | awk '{print "Log files (with the extension .log) = "$1}'
find $1 -type f -regex ".*\.\(tgz\|gz\|a\|zip\|rar\)" 2>/dev/null | wc | awk '{print "Archive files = "$1}'
ls -laR $1 2>/dev/null | grep "^l" | wc | awk '{print "Symbolic links = "$1}'

echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):"
find $1 2>/dev/null -xdev -type f -exec du -sh {} ';' | sort -rh | head -10 | awk '{printf " %s\n", $2}' > $part_50
cat $part_50 | sed "s/\./\ /g" | sed "s/\//\ /g"| sed "s/\_/\ /g"| awk '{print $NF}' > $part_52
find $1 2>/dev/null -xdev -type f -exec du -sh {} ';' | sort -rh | head -10 | awk '{printf NR " - %s, %s,\n", $2, $1}' > $part_50
paste $part_50 $part_52
rm $part_50 $part_52

if [ $exe -eq 0 ]; then
echo -e "No executable files"
rm $part_54
else
echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
names=$(du -ah $1 2>/dev/null | awk '{print $2}')
du -ah $1 2>/dev/null > $part_52
#find $1 2>/dev/null -type f -print0 | xargs -0 md5sum 2>/dev/null| awk '{print $1}'>$part_53
file -b $names > $part_51
paste $part_52 $part_51 | awk '/executable/{print $1, $2}' | sort -rh | head -10 > $part_54
cat $part_54 | awk '{print $2}' > $part_50
IFS=$'\n'
for var in $(cat $part_50)
do
md5sum "$var" | awk '{print $1}'>>$part_53
done
paste $part_54 $part_53 > $part_52
awk '{print " - "$2",", $1",", $3}' $part_52 > $part_51
awk '{print NR $0}' $part_51
rm  $part_50 $part_51 $part_52 $part_53 $part_54
fi
