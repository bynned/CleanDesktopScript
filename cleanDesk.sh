#!/usr/bin/env sh

set -e #To stop the script if there is a problem
echo "Beginning to move files!"

junk_folder="Kaikkee2" #Change this to your junk folder name

desktop_path="$HOME/Desktop"
junk_folder_path="$desktop_path/$junk_folder"

for file in "$desktop_path"/*; do
  if [ "$file" != "$junk_folder_path" ]; then
    mv "$file" "$junk_folder_path"
  fi
done

if [ "$(uname)" = "Darwin" ]; then
  # macOS
  echo "Operating system: macOS"
  echo "All files and directories from Desktop have been moved"

elif [ "$(expr substr $(uname -s) 1 10)" = "MINGW32_NT" ]; then
  # Windows
  echo "Operating system: Windows"
  mv "$desktop_path"/*.lnk "$junk_folder_path" #Move shortcuts, .lnk is the file extention for shortcuts used in windows
  echo "All files and directories from Desktop have been moved"

else
  echo "Unknown operating system"
  exit 1 # exit script

fi