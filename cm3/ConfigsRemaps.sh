#!/bin/bash

#This section is for an image that I have
if [ -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/wrally2.cfg" ]; then
        rm -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/wrally2.cfg"
fi
if [ -f "/opt/retropie/configs/all/retroarch/config/FbAlpha/dmnfrnt.cfg" ]; then
        rm -f "/opt/retropie/configs/all/retroarch/config/FbAlpha/dmnfrnt.cfg"
fi
if [ -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/dmnfrnt.cfg" ]; then
        rm -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/dmnfrnt.cfg"
fi
#End of section

cd /home/pi
if [ -d /home/pi/tmp ]; then
        sudo rm -R /home/pi/tmp
        mkdir /home/pi/tmp
else
        mkdir /home/pi/tmp
fi
cd tmp
#Downloading and copying emulators configs
echo "Download and copy emulators configs"
sleep 2
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-ConfigsRemaps/tree/master/cm3/emulators
sudo cp -R emulators /opt/retropie/
#Downloading and copying systems-games configs and remaps
echo "Download and copy systems-games configs and remaps"
sleep 2
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-ConfigsRemaps/tree/master/cm3/configs
cp -R configs /opt/retropie/
cd ..
rm -r tmp
