#!/bin/bash
# --------------------------------------------------------
# Script Name : backup.sh
# Purpose     : To take a backup of a given directory.
# Author      : <CHIRAG YADAV>
# Date        : <2501730067>
# --------------------------------------------------------
# Asking user for the directory to backup
echo "Enter the directory you want to backup:"
read source_directory
# Creating a backup folder if it doesn't exist
backup_folder="backups"
mkdir -p "$backup_folder"
# Creating a timestamp for uniqueness
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
# Setting backup name
backup_name="backup_$timestamp"
# Copy the directory to backup folder
cp -r "$source_directory" "$backup_folder/$backup_name"
echo "Backup completed!"
echo "Backup saved at: $backup_folder/$backup_name"
