#!/bin/bash

<< help
This is a shell script to take backups 
can also be used with cron 
help
source_dir="/home/ubuntu/scripts"
destination_dir="/home/ubuntu/backup"

function create_backup {

	timestamp=$(date '+%Y-%m-%d-%H-%M-%S' )

        backup_dir="${destination_dir}/backup_${timestamp}"

        zip -r "${backup_dir}.zip" "$source_dir"

        echo "Backup Completed"
}

create_backup $source_dir $destination_dir
