sudo apt-get remove amazon* 
sudo apt-get remove aisleriot* 
sudo apt-get remove gnome-mahjongg* 
sudo apt-get remove deja-dup-* 
sudo apt-get remove transmission-gtk*
sudo apt-get remove totem*
sudo apt-get remove activity-log-manager* 
sudo apt-get remove unity-lens-photos* 
sudo apt-get remove unity-scope-gdrive* 
sudo apt-get remove brasero* 
sudo apt-get remove landscape-client-ui-install* 
sudo apt-get remove unity-control-center-signon* 
sudo apt-get remove printer-driver-foo2zjs-common*
sudo apt-get remove empathy*
sudo apt-get remove thunderbird*
sudo apt-get remove onboard*
sudo apt-get remove gnome-orca*
#Unity Dash search result :-
sudo apt-get remove unity-scope-musicstores

sudo apt-get remove $(dpkg --get-selections | cut -f1 | grep -P "^unity-(lens|scope)-" | grep -vP "unity-(lens|scope)-(home|applications|files)" | tr "\n" " ")

sudo apt-get autoremove
