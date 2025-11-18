#!/bin/bash
# --------------------------------------------------------
# Script Name : download.sh
# Purpose     : Download a file from the internet using wget.
# Author      : <Your Name>
# Date        : <Date>
# --------------------------------------------------------

# Asking the user for the download link
echo "Enter the file URL to download:"
read file_url
# Folder where downloaded files will be stored
download_folder="downloads"
# Create folder if it doesn't exist
mkdir -p "$download_folder"
# Download the file using wget
wget -P "$download_folder" "$file_url"
echo "Download completed!"
echo "File saved inside: $download_folder"