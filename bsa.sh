#!/bin/zsh
echo -e “e[0;33mBig Sur Automator XI Stable[0m”
read -e -p "Drag & Drop the InstallAssistant.pkg and hit Return: " PACKAGEPATH
installer -store -pkg "$PACKAGEPATH" -target /
/Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --nointeraction --volume /Volumes/volume
git clone https://www.github.com/barrykn/big-sur-micropatcher
sh ~/big-sur-micropatcher/micropatcher.sh
nvram boot-args="-no_compat_check amfi_get_out_of_my_way" 
bless -mount /Volumes/Install\ macOS\ Big\ Sur --setBoot
echo success
