echo "Do you wish to continue?"
select yn in "Yes" "No"
case $yn in
    Yes ) continue;;
    No ) exit;;
esac
echo -e “e[0;33mBSA Codename dualone canary[0m”
if [ -e "/Users/Shared/InstallAssistant.pkg" ]; then
    echo 'BSInstaller already exists continuing without downloading' >&2
    continue
fi

curl -o /Users/Shared/InstallAssistant.pkg --url http://http://swcdn.apple.com/content/downloads/22/49/001-36806-A_PLHUUGQ7C6/y680rlbwudm0kr7kugbt658ot99pqyo9hv/InstallAssistant.pkg
installer -store -pkg "/Users/Shared/InstallAssistant.pkg" -target /
/Applications/Install\ macOS\ Big\ Sur\ Beta.app/Contents/Resources/createinstallmedia --nointeraction --volume /Volumes/volume
if [ -e "~/big-sur-micropatcher/micropatcher.sh" ]; then
    echo 'micropatcher already exists continuing without downloading' >&2
    continue
fi

git clone https://www.github.com/barrykn/big-sur-micropatcher
sh ~/big-sur-micropatcher/micropatcher.sh
nvram boot-args="-no_compat_check amfi_get_out_of_my_way" 
echo "Do you wish to continue?"
select yn in "Yes" "No"
case $yn in
    Yes ) continue;;
    No ) exit;;
esac
bless -mount /Volumes/Install\ macOS\ Big\ Sur\ Beta --setBoot
echo Success
