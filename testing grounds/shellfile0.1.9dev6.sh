#!/bin/bash
echo To make this script work please set a unix password by entering your password twice
sudo passwd
echo enter password
su
echo big sur automator nonrelease 019
sudo curl -o /Users/Shared/InstallAssistant.pkg --url http://swcdn.apple.com/content/downloads/34/37/001-26097-A_OYW4Z0U99Z/gdas3ubse9fasb0217grmmyplfd6o7mqfp/InstallAssistant.pkg
sudo installer -store -pkg "/Users/Shared/InstallAssistant.pkg" -target /
sudo /Applications/Install\ macOS\ Big\ Sur\ Beta.app/Contents/Resources/createinstallmedia --nointeraction --volume /Volumes/volume
git clone https://www.github.com/barrykn/big-sur-micropatcher
sudo sh ~/big-sur-micropatcher/micropatcher.sh
sudo nvram boot-args="-no_compat_check amfi_get_out_of_my_way" echo Success
sudo bless -mount /Volumes/Install\ macOS\ Big\ Sur\ Beta --setBoot
sudo rm -rf ~/big-sur-micropatcher
sudo rm -rf /Users/Shared/InstallAssistant.pkg
echo success



