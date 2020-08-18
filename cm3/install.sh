#!/bin/bash

cd ~
if [ -d /home/pi/tmp ]; then
        sudo rm -R /home/pi/tmp
        mkdir /home/pi/tmp
else
        mkdir /home/pi/tmp
fi
cd tmp
#Descargamos y copiamos las configuraciones de los emuladores
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-ConfigsRemaps/tree/master/cm3/emulators
sudo cp -R emulators /opt/retropie/
#Descargamos y copiamos las configuraciones de sisyemas, juegos y mapeos
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-ConfigsRemaps/tree/master/cm3/configs
cp -R configs /opt/retropie/