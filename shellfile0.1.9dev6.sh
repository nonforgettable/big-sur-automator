#!/bin/bash
echo -e “e[0;33mBig Sur Automator 109 canary[0m”
curl -o /Users/Shared/InstallAssistant.pkg --url http://swcdn.apple.com/content/downloads/34/37/001-26097-A_OYW4Z0U99Z/gdas3ubse9fasb0217grmmyplfd6o7mqfp/InstallAssistant.pkg
installer -store -pkg "/Users/Shared/InstallAssistant.pkg" -target /
/Applications/Install\ macOS\ Big\ Sur\ Beta.app/Contents/Resources/createinstallmedia --nointeraction --volume /Volumes/volume
git clone https://www.github.com/barrykn/big-sur-micropatcher
sh ~/big-sur-micropatcher/micropatcher.sh
nvram boot-args="-no_compat_check amfi_get_out_of_my_way" echo Success
 bless -mount /Volumes/Install\ macOS\ Big\ Sur\ Beta --setBoot
 rm -rf ~/big-sur-micropatcher
 rm -rf /Users/Shared/InstallAssistant.pkg
echo success



