#!/bin/bash

echo "FILEBOT SETUP IS RUNNING"

#activate and login to subtitles
filebot --license /config/filebot/license.psm
#Run this as local user
su - nobody -s /bin/sh -c "/home/nobody/loginOpenSub.exp $OPENSUB_USER $OPENSUB_PASS"
#filebot -script fn:sysinfo

rm /etc/supervisor/conf.d/filebotsetup.conf

exit 0
