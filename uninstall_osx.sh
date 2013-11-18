#!/bin/sh

# Extract first line
line=$(head -n 1 installed_files.txt)

# Extract index of 'site-packages'
tmp=${line%%/EGG-INFO*}
index=${#tmp}

# Extract Libraries install path
install_dir=${line:0:$index}

# Remove all installed files
echo "Remove files..."
cat installed_files.txt | sudo xargs rm -Rfv

# remove directory from libraries
sudo rm -Rf $install_dir

echo "Uninstalled !"