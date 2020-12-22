#!/bin/bash
#Install Java
pacman -Syy
pacman -S --needed jre11-openjdk-headless expect --noconfirm
#install FileBot
mkdir /home/nobody/filebot-portable && cd /home/nobody/filebot-portable
sh -xu <<< "$(curl -fsSL https://raw.githubusercontent.com/filebot/plugins/master/installer/tar.sh)"
#Symlink it again b/c the script uses sudo which arch doesnt have
ln -sf "$PWD/filebot.sh" /usr/local/bin/filebot
#Download the Pushover Bash
curl https://raw.githubusercontent.com/akusei/pushover-bash/master/pushover.sh -o /home/nobody/pushover.sh
chmod +x /home/nobody/pushover.sh