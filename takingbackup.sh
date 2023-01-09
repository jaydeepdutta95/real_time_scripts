#!/bin/bash
src_dir= /home/ubuntu/firstfolder/scripts
target_dir= /home/ubuntu/firstfolder/backup

current_date=$(date "+%Y-%m-%d-%H-%M-%S")

echo "$current_date"

backup_file=$target_dir/$current_date.tar

echo "taking backup on $current_date"

sudo tar -cvf $backup_file --absolute-names $src_dir

echo "backup done"