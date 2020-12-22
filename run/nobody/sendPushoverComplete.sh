#!/bin/bash
torrentid=$1
torrentname=$2
torrenpath=$3
echo "Torrent Details: " "$torrentname" "$torrentpath" "$torrentid" 
/home/nobody/pushover.sh -t $PUSHOVER_APPKEY -u $PUSHOVER_USERKEY -m "$torrentname has finished downloading" -p -1