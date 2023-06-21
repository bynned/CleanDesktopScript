# CleanDesktopScript

## What does this script do:
Let's say you have a folder on desktop that has everything, to keep your desktop clean. But sometimes its easy to just drag stuff on the desktop you use, so then it piles up and now your desktop is full of junk and you dont have the energy to drag and drop the files to the folder where you hold everything.

Well no worries since this script will change your life!

:heavy_check_mark: Moves files and directories to desired folder
<br />
:heavy_check_mark: Moves .lnk extentions to desired folder

## How to use

Change `junk_folder` variable to your folder name

Make the sript executable `chmod +x cleanDesk.sh`

Execute the script `./cleanDesk.sh`

## Supported OS

| OS | Supported | Notes |
| ------------- | ------------- | ------------- |
| Windows  | :white_check_mark:  |   |
| MacOS  | :white_check_mark:  | Application shortcuts wont move  |
| Linux  | :white_check_mark:  | Application shortcuts wont move  |

> To get around the application shortcuts with linux and macOS, you should comment out this line on line 14:
```
mv "$desktop_path"/*.lnk "$junk_folder_path"
```
