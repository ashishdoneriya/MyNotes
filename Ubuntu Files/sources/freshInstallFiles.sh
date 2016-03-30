#!/bin/sh
#Fix Brightness
sudo touch /usr/share/X11/xorg.conf.d/20-intel.conf
FILE="/usr/share/X11/xorg.conf.d/20-intel.conf"
/bin/cat <<EOM>$FILE
Section "Device"
        Identifier  "card0"
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
        BusID       "PCI:0:2:0"

EndSection
EOM

#Disable Guest Account Logon
FILE1="/etc/lightdm/lightdm.conf"
/bin/cat <<EOM>>$FILE1
allow-guest=false
EOM

FILE2="/etc/apt/sources.list"
/bin/cat <<EOM>$FILE2
deb http://in.archive.ubuntu.com/ubuntu/ trusty main restricted
deb-src http://in.archive.ubuntu.com/ubuntu/ trusty main restricted
deb http://in.archive.ubuntu.com/ubuntu/ trusty-updates main restricted
deb-src http://in.archive.ubuntu.com/ubuntu/ trusty-updates main restricted
deb http://in.archive.ubuntu.com/ubuntu/ trusty universe
deb-src http://in.archive.ubuntu.com/ubuntu/ trusty universe
deb http://in.archive.ubuntu.com/ubuntu/ trusty-updates universe
deb-src http://in.archive.ubuntu.com/ubuntu/ trusty-updates universe
deb http://in.archive.ubuntu.com/ubuntu/ trusty multiverse
deb-src http://in.archive.ubuntu.com/ubuntu/ trusty multiverse
deb http://in.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb-src http://in.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb http://security.ubuntu.com/ubuntu trusty-security main restricted
deb-src http://security.ubuntu.com/ubuntu trusty-security main restricted
deb http://security.ubuntu.com/ubuntu trusty-security universe
deb-src http://security.ubuntu.com/ubuntu trusty-security universe
deb http://security.ubuntu.com/ubuntu trusty-security multiverse
deb-src http://security.ubuntu.com/ubuntu trusty-security multiverse
deb http://archive.canonical.com/ubuntu trusty partner
deb-src http://archive.canonical.com/ubuntu trusty partner
## This software is not part of Ubuntu, but is offered by third-party
deb http://extras.ubuntu.com/ubuntu trusty main
deb http://in.archive.ubuntu.com/ubuntu/ trusty-proposed universe main restricted multiverse
deb-src http://extras.ubuntu.com/ubuntu trusty main
deb http://ppa.launchpad.net/linrunner/tlp/ubuntu trusty main
# deb-src http://ppa.launchpad.net/linrunner/tlp/ubuntu trusty main
deb http://ppa.launchpad.net/noobslab/apps/ubuntu trusty main
# deb-src http://ppa.launchpad.net/noobslab/apps/ubuntu trusty main
deb http://ppa.launchpad.net/noobslab/themes/ubuntu trusty main
# deb-src http://ppa.launchpad.net/noobslab/themes/ubuntu trusty main
deb http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main
# deb-src http://ppa.launchpad.net/saiarcot895/myppa/ubuntu trusty main
deb http://ppa.launchpad.net/tualatrix/ppa/ubuntu trusty main
# deb-src http://ppa.launchpad.net/tualatrix/ppa/ubuntu trusty main
deb http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu trusty main
# deb-src http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu trusty main
EOM

