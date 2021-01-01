#!/bin/bash
#Install Docker
pacman -Syy
pacman -S --needed expect docker --noconfirm
#Download the Pushover Bash
curl https://raw.githubusercontent.com/akusei/pushover-bash/master/pushover.sh -o /home/nobody/pushover.sh && chmod +x /home/nobody/pushover.sh
