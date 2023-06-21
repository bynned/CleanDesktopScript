#!/usr/bin/env sh

set -e #To stop the script if there is a problem
echo "Beginning to move files!"

junk_folder="Kaikkee2" #Change this to your junk folder name

desktop_path="$HOME/Desktop"
junk_folder_path="$desktop_path/$junk_folder"

shopt -s extglob
mv "$desktop_path"/!(Kaikkee2) "$junk_folder_path" #Move files and directories
shopt -u extglob
mv "$desktop_path"/*.lnk "$kaikkee_folder" #Move shortcuts, .lnk is the file extention for shortcuts used in windows

echo "All files and directories from Desktop have been moved"