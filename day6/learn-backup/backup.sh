#!/bin/bash

<< comment
This is a script for backup with 5 day rotation

Usage : 
./backup.sh <file path whihc you want to backup (source)> <path to backupfoler (destination)>
comment



display-usage(){
	echo "./backup.sh <file path whihc you want to backup (source)> <path to backupfoler (destination)>"
}



install-zp(){

    if command -v zip >/dev/null 2>&1; then
        echo "Zip is already installed"
        return 0
    fi

    if sudo apt-get install -y zip; then
        echo "Zip is installed successfully"
    else
        echo "Failed to install zip"
        return 1
    fi
}



source_dir=$1
destination=$2
timestamp=$(date '+%d-%m-%Y-%H-%M-%S')  # Taking backup for last 5 days

create-backup(){


	zip -r "${destination}/backup_${timestamp}.zip" ${source_dir} > /dev/null 2>&1


	if (( $? == 0 )); then
		echo "Backup genertaed successfully for ${timestamp}"
	else
		echo "Backup can't be generated due to an error occured"
	fi	
}



perform-rotation(){

	# Array

	backups=($(ls -t "${destination}/backup_"*.zip 2>/dev/null ))


	if (( ${#backups[@]} > 5 )); then
		echo "Performing roatation for 5 days"

		backups_to_remove=("${backups[@]:5}")

		for i in "${backups_to_remove[@]}";
		do
			rm -f ${i}
		done
	fi

}



if (( $# == 0)); then
	display-usage 
fi



install-zp


create-backup

perform-rotation
