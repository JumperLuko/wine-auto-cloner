# Excract and create folder icons sizes
# tar -xf icons.tar.xz

if [ "$warningIcons" == "" ]; then
    echo -e "\nPlease put the icons in icons folder"
    echo "Use png files and put in the apps folders with the respective folder resolutions"
    echo "Or use svg files in scalable/apps/"
    echo "press enter to copy to system"
    read
fi
sudo cp -r ./icons/* /usr/share/icons/hicolor/

# /root/.local/share/icons/hicolor?