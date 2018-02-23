#!/bin/bash

# detect platform - 32 or 64 bit
platform=`uname -m`

# using platform, set the correct download url
if [ $platform = "x86_64" ]
then
	url="https://dl.pstmn.io/download/latest/linux64"
else
	url="https://dl.pstmn.io/download/latest/linux32"
fi

echo -e "\e[92m\e[1mDownloading the latest version..."

# download postman to /tmp
wget --quiet --show-progress $url -O /tmp/postman.tar.gz

echo "Installing..."

# unzip into /usr/bin
sudo tar -xzf /tmp/postman.tar.gz -C /usr/bin

# create a symlink for easy access (force rewrite if exists)
sudo ln -sf /usr/bin/Postman/Postman /usr/bin/postman

echo "Cleanup..."
# delete the downloaded file
rm /tmp/postman.tar.gz

# detect the installed version
version=`grep -oP '"version":"\K\d+.\d+.\d+' /usr/bin/Postman/resources/app/package.json`

# success message
echo -e "Postman was updated to version $version\n\e[0m"




