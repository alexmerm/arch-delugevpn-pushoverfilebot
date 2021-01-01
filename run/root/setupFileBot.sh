#!/bin/bash

echo "FILEBOT SETUP IS RUNNING"
#Allow user nobody to access docker
chown nobody /var/run/docker.sock
#activate FileBot License
docker run --rm -v $STORAGE_DIR:/storage -v $FILEBOT_CONF_DIR:/data rednoah/filebot --license /data/license.psm
#Setup FileBot subtiles
/home/nobody/loginOpenSub.exp $OPENSUB_USER $OPENSUB_PASS "$FILEBOT_CONF_DIR"
#docker run --rm -v $STORAGE_DIR:/storage -v $FILEBOT_CONF_DIR:/data rednoah/filebot -script fn:sysinfo

rm /etc/supervisor/conf.d/filebotsetup.conf

exit 0
