#!/bin/bash
echo big sur automator X stable
curl -o /Users/Shared/InstallAssistant.pkg --url http://swcdn.apple.com/content/downloads/22/49/001-36806-A_PLHUUGQ7C6/y680rlbwudm0kr7kugbt658ot99pqyo9hv/InstallAssistant.pkg
installer -store -pkg "/Users/Shared/InstallAssistant.pkg" -target /
/Applications/Install\ macOS\ Big\ Sur\ Beta.app/Contents/Resources/createinstallmedia --nointeraction --volume /Volumes/volume
git clone https://www.github.com/barrykn/big-sur-micropatcher
sh ~/big-sur-micropatcher/micropatcher.sh
nvram boot-args="-no_compat_check amfi_get_out_of_my_way" echo Success
bless -mount /Volumes/Install\ macOS\ Big\ Sur\ Beta --setBoot
echo success
