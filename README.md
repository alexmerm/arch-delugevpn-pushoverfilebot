

# arch-delugevpn-pushoverfilebot

 ## Description
This is the [binhex/arch-delugevpn](https://github.com/binhex/arch-delugevpn) docker image but with Filebot Portable and a Pushover script in it. 

Still working on this so lmk if there are issues, also *absolutely* use at your own risk this is my first docker project and it's completely possible I break the image.

**Applications**

[FileBot Portable](https://www.filebot.net/forums/viewtopic.php?t=6057)
[Pushover-bash](https://github.com/akusei/pushover-bash)
[Deluge](http://deluge-torrent.org/)  
[Privoxy](http://www.privoxy.org/)  
[OpenVPN](https://openvpn.net/)  
[WireGuard](https://www.wireguard.com/)

## Usage
Follow the docker-run instructions from [binhex/arch-delugevpn](https://github.com/binhex/arch-delugevpn)'s readme and

    docker run ...
		....
        -e OPENSUB_USER=<YOUR_OPENSUB_USER> ^
	    -e OPENSUB_PASS=<YOUR OPENSUB PASSWORD> ^
	    -e PUSHOVER_USERKEY=<YOUR PUSHOVER USERKEY> ^
	    -e PUSHOVER_APPKEY=<YOUR PUSHOVER APPLICATION KEY> ^
		akkaish/arch-delugevpn

Also:
- Store your filebot liscense in /config/filebot/license.psm
- and store your filebot AMC arguments in : /config/filebot/FileBotArgs.txt , see my example [here](FileBotArgs.txt)