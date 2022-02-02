#!/bin/bash
source ./general_func-var.sh

# Make folder directory if not exists
sudo mkdir-if $wineSystemDir/

# List existing folders
echo "These are the current folders"
ls $wineSystemDir/

# Request folder name
echo "Empty for default folder"
read -p "Type the Folder name: " wineSystemFolder

read -p "type exe installer with location: " wineExe

# Default folder if is null
if [ "$wineSystemFolder" == "" ]; then
    wineSystemFolder="wine-default"
fi

sudo WINEPREFIX="$wineSystemDir/$wineSystemFolder" wine wineboot 2>> ~/.cache/wine-clone.log
sudo WINEPREFIX="$wineSystemDir/$wineSystemFolder" wine $wineExe 2>> ~/.cache/wine-clone.log

# Copy executable for user, thinking about how
# sudo cp $wineSystemFolder.sh $wineSystemDir/
# ln -S $wineSystemDir/$wineSystemFolder.sh /usr/bin/wine-clone_$wineSystemFolder