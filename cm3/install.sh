#!/bin/bash

cd ~
if [ -d /home/pi/tmp ]; then
        sudo rm -R /home/pi/tmp
        mkdir /home/pi/tmp
else
        mkdir /home/pi/tmp
fi
cd tmp
#Download and copy emulators configs
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-ConfigsRemaps/tree/master/cm3/emulators
sudo cp -R emulators /opt/retropie/
#Download and copy systems-games configs and remaps
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-ConfigsRemaps/tree/master/cm3/configs
cp -R configs /opt/retropie/
cd ..
rm -r tmp
