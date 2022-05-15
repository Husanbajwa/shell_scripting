#!/bin/bash


#src = path of source of backup files , which files have to backup
#trg = path of the directory where the backup files got stored 
src=/home/ubuntu/git_pages/shell_scripting
trg=/home/ubuntu/backups
current_time=$(date "+%d-%h-%Y")
echo "$current_time"
backup_file_name=$trg/$current_time.tgz
echo "taking backup on $current_time"
tar czf $backup_file_name --absolute-names $src
echo "Hey Backup Complete" 
