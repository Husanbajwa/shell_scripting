#!/bin/bash
alert=90
df -H | awk '{print $5" " $1}'|while read output;
do
 usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
 file_sys=$(echo $output | awk '{print $2}')
 if [ $usage -ge 90 ]
 then
 echo "critical for $file_sys"
 fi
done
