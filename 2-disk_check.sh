#!/bin/bash
alert=45
df -H | awk '{print $5" " $1}'| while read output;
do
 usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
 file_sys=$(echo $output | awk '{print $2}')
 if [ $usage -ge $alert ]
 then
 echo "critical for $file_sys"
 fi
done
