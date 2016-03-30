#!/bin/sh

sudo apt-get update

#Showing full list of startup applications and processes
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

gsettings set com.canonical.indicator.bluetooth visible false
gsettings set com.canonical.indicator.datetime show-calender true
gsettings set com.canonical.indicator.datetime show-clock true
gsettings set com.canonical.indicator.datetime show-date true
gsettings set com.canonical.indicator.datetime show-day true
gsettings set com.canonical.indicator.keyboard visible false
gsettings set com.canonical.Unity.Dash scopes "['applications.scope']"
gsettings set com.ubuntu.update-notifier show-apport-crashes false
gsettings set org.gnome.desktop.lockdown disable-user-printing true
gsettings set org.gnome.desktop.lockdown disable-user-switching true
gsettings set org.gnome.desktop.privacy old-files-age 0
gsettings set org.gnome.desktop.privacy recent-files-max-age 0
gsettings set org.gnome.desktop.privacy remember-app-usage false
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.gedit.preferences.editor auto-indent true
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false
gsettings set org.gnome.Vino require-encryption false
gsettings set com.canonical.desktop.interface scrollbar-mode normal
gsettings set com.canonical.indicator.session show-real-name-on-panel true
gsettings set com.canonical.indicator.session suppress-logout-restart-shutdown true
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

sudo apt-get install axel bum classicmenu-indicator dconf-editor geany galculator gdebi indicator-cpufreq indicator-synapse mac-ithemes-v3 mac-icons-v3 indicator-multiload tlp tlp-rdw compizconfig-settings-manager nautilus-open-terminal qbittorrent rar synaptic ubuntu-tweak unrar unity-tweak-tool virtualbox vlc openjdk-7-jdk icedtea-plugin icedtea-7-plugin unetbootin uck qbittorrent kolourpaint4 ubuntu-restricted-* rhythmbox openssh-sftp-server
sudo apt-get --no-install-recommends install maven
sudo tlp start
nautilus -q

#Install WinUSB
wget https://launchpad.net/~colingille/+archive/freshlight/+files/winusb_1.0.11+saucy1_amd64.deb
sudo dpkg -i winusb_1.0.11+saucy1_amd64.deb
sudo apt-get -f install

