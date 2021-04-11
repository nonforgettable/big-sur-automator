# The project is semi-dead. This means that i'll still update it as long as I recieve a message with an issue addressed or a new idea, I'll update it. Please assign an issue here if you found any.

# Big Sur Automator "it saves your ass."

# What is this? 
Big Sur automator is a tool that installs the latest macOS Big Sur Beta (You can choose public beta, or developer beta.) on a UNSUPPORTED Mac, allowing you to juice your Mac
even more. Also, since version 1.0 stable, it's completly written in shell language and went indipendant from ROfF, 100% compatible with most macOS versions. 

# Instructions

0. UNPLUG ALL EXTERNAL DISKS CONNECTED EXCEPT YOUR USB to USE WITH BIG SUR. ALL DATA WILL BE ERASED

1. Run the commands below step by step on the terminal app
'git clone https://github.com/nonforgettable/big-sur-automator'
`cd big-sur-automator`

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

# big-sur-automator contacts
iMessage: json.us@icloud.com
Telegram: nonforgettable 
Email: json.us@icloud.com
Email 2: joowhanlee.devel@gmail.com
Email 3: json.us@outlook.com

Contact if you have a problem thats too simple for a issue, help for forking, other development questions and pull request acception requests. 

# Beta / Dev / Canary test
Update: Closed. Contact for test request.
Currently, only canary version exists and it's fully open to users (https://www.github.com/nonforgettable/big-sur-automator/canary) but, it will soon be closed soon. Contact me via above to request to be a beta / dev / canary tester. 
 
