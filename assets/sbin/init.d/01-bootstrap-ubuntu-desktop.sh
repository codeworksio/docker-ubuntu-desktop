#!/bin/bash
set -e

# update password
echo $VNC_PASSWORD | vncpasswd -f > /home/$SYSTEM_USER/.vnc/passwd
chmod 600 /home/$SYSTEM_USER/.vnc/passwd
chown -R $SYSTEM_USER:$SYSTEM_USER /home/$SYSTEM_USER
