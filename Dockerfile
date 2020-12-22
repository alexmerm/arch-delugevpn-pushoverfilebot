FROM binhex/arch-delugevpn

# add supervisor conf file to setup filebot on first boot
ADD build/*.conf /etc/supervisor/conf.d/

# add bash scripts to install FileBot
ADD build/root/*.sh /root/

#Add bash scripts to setup filebot
ADD run/root/*.sh /root/


#Add bash scripts to and send notifs
ADD run/nobody/*.* /home/nobody/

#Install FileBot
RUN chmod +x /root/*.sh /home/nobody/*.sh /home/nobody/*.exp && \
	/bin/bash /root/installFileBot.sh