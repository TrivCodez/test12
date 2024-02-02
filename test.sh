#!/bin/bash
dpkg --add-architecture i386
apt update
DEBIAN_FRONTEND=noninteractive apt install wine qemu-kvm *zenhei* xz-utils dbus-x11 curl firefox-esr gnome-system-monitor mate-system-monitor  git xfce4 xfce4-terminal tightvncserver wget -y
wget https://github.com/novnc/noVNC/archive/refs/tags/v1.2.0.tar.gz
tar -xvf v1.2.0.tar.gz
mkdir  $HOME/.vnc
echo 'luo' | vncpasswd -f > $HOME/.vnc/passwd
echo '/bin/env  MOZ_FAKE_NO_SANDBOX=1  dbus-launch xfce4-session'  > $HOME/.vnc/xstartup
chmod 600 $HOME/.vnc/passwd
chmod 755 $HOME/.vnc/xstartup
echo 'whoami ' >>/luo.sh
echo 'cd ' >>/luo.sh
echo "su -l -c 'vncserver :2000 -geometry 1360x768' "  >>/luo.sh
echo 'cd /noVNC-1.2.0' >>/luo.sh
echo './utils/launch.sh  --vnc localhost:7900 --listen 8900 ' >>/luo.sh
chmod 755 /luo.sh
