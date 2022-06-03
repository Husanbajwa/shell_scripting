#!/bin/bash
alert=40
current_time=$(date "+%d-%h-%Y")
df -H | awk '{print $5" " $1}'| while read output;
do
 usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
 file_sys=$(echo $output | awk '{print $2}')
 if [ $usage -ge $alert ]
 then
 echo "CRITICAL for $file_sys  ($usage %)   AT $current_time"
 fi
done
