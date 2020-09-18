# Big Sur Automator Canary - Codename dualone
This repository contains a **canary** version of big-sur-automator. Canary versions may be seriously glitchy or have a rough edge. If your lost and you just wan't something less dodgier, go to our mainline repository which contains a stable version of big-sur-automator. https://www.github.com/nonforgettable/big-sur-automator

# Changes made in canary1.1 (Developer beta)

> Yes or no selection dialog: Asks to the user for confirmation

> Downgrade to beta 5 for stablity improvments: Beta 6 may be glitchy on unsupported Macs, therefore temporairly switching to beta 5 until new stabler one releases.

> Automatic package detection: If a copy of macOS Big Sur installation package is detected in /Users/Shared/, the downloading of it will be canceled 

> Automatic patcher detection: If a clone of big-sur-micropatcher is detected in ~/, the cloning for it will be canceled.

> several other changes too minor to list

# Changes that will be made soon
**The changes under will be made in somewhere between version canary1.7 to stable 2.0**
> Automatic model detection

> Automatic misc. requirments detection

> unpatching USB for proper use on supported systems in case of something getting screwed
Mega, Google Drive, Mediafire mirrors for faster downloading
BitBucket transistion or use

# Changes that will be made in a future not so far
**The changes under will be made in somewhere between version canary3.0 to stable7.0**
> Try to maintain the repository long enough
> Semi-GUI
> dash and -- option support
> Custom website
> Fancy CLI displaying

# Changes that I will be happy to see in the future
**The changes that I personally willing to happen in a very far future**
> Full native GUI (Swift)
> Linux and possibly Windows su- let's jsut say other OS support.
> Seperate patch































# Big Sur Automator "it saves your ass."

# What is this? 
Big Sur automator is a tool that installs the latest macOS Big Sur Beta (You can choose public beta, or developer beta.) on a UNSUPPORTED Mac, allowing you to juice your Mac
even more. Also, since version 1.0 stable, it's completly written in shell language and went indipendant from ROfF, 100% compatible with most macOS versions. 

# Instructions

0. UNPLUG ALL EXTERNAL DISKS CONNECTED EXCEPT YOUR USB to USE WITH BIG SUR. ALL DATA WILL BE ERASED

1. Run the commands below step by step on the terminal app
'''
git clone https://github.com/nonforgettable/big-sur-automator
'''
'''
cd big-sur-automator
'''

2. (This step is automated now) Format your USB drive to the configuration under (using disk utility).
macOS Extended Journal, Name: volume (no caps), GUID Partition Map

3. Go back to terminal and see below, there should be two commands, Run the 1) command if you want developer beta, 2) for public beta

1) sudo sh nightlybsa.sh
2) sudo sh nightlybsapublicbeta.sh

4. Let the automator to the magic. It will make a macOS Big Sur installer USB, patch it and attempt to set the USB as the default boot volume
5. Reboot. If it doesn't boot into the USB, just option boot into the USB.
[this is where it gets risky. well not much... just a bit]
6. Open Disk Utility, select the entire internal disk and erase it as following: Format: APFS | Name: Big Sur | Alternative name: BS | Map: GUID Partition Map
7. Command + Q out of Disk Utility, open terminal (Menu bar > Utilities > Terminal) and type: /Volumes/Image\ Volume/set-vars.sh
8. Command + Q out of Terminal and install macOS normally on the internal disk. Come back after a few hours or so and Big Sur will be installed. Wait, this isn't the end. Maybe.
9. Set up your Mac and test if everything works well. If it doesn't, try following the optional guide.

# Kext Patch like a charm [Optional]
If some features are disabled like WiFi (most common), this extra guide will probably fix it. Big Sur drops support on some hardwares on old Macs. Well, fix it.
1. Boot into the patched recovery USB
2. Open up terminal (Menu bar > Utilities > Terminal)
3. Enter following: /Volumes/Image\ Volume/patch-kexts.sh /Volumes/
4. Don't run it just yet, now, remember when I told you to format the internal drive? If you selected the first name (Big Sur), type "Big\ Sur" (no quotes) and run it. If you chose the alternative name, type "BS" (no quotes) and run it.
5. reboot to the internal drive and everything "should" be fixed.

# big-sur-automator related links and certified forks
- **https://www.github.com/nonforgettable/big-sur-automator/canary Canary on-development versions
- **https://www.github.com/TimothyRLaMora734/big-sur-automator** Legacy fork of BSA
- **https://www.github.com/NotDan2/big-sur-automator** Unofficial fork of BSA. More frequent changes
- **https://github.com/nonforgettable/big-sur-automator/blob/master/for%20forkers/forker%20documentation** Developer documentation for forkers and reverse engineers or people who are intrested to file pull request

# big-sur-automator certified contacts
iMessage: json.us@icloud.com
Telegram: nonforgettable 
Email: json.us@icloud.com
Email 2: joowhanlee.devel@gmail.com
Email 3: json.us@outlook.com

Contact if you have a problem thats too simple for a issue, help for forking, other development questions and pull request acception requests. 

# Beta / Dev / Canary test
Currently, only canary version exists and it's fully open to users (https://www.github.com/nonforgettable/big-sur-automator/canary) but, it will soon be closed soon. Contact me via above to request to be a beta / dev / canary tester. 
 
