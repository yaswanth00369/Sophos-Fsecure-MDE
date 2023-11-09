#!/bin/bash
echo anvuFqZ9an | sudo -S apt update
echo anvuFqZ9an | sudo -S apt upgrade -y
echo anvuFqZ9an | sudo -S apt install -y auditd libcurl4 libfuse2 python3 git vim htop net-tools
echo anvuFqZ9an | sudo -S git clone https://github.com/yaswanth00369/Sophos-Fsecure-MDE.git
sleep 15
cd Sophos-Fsecure-MDE
echo anvuFqZ9an | sudo -S bash SophosSetup.sh
sleep 15
echo anvuFqZ9an | sudo -S bash 22.04_install_mdatp.sh
sleep 15
echo anvuFqZ9an | sudo -S dpkg -i f-secure-mdr_latest_amd64.deb
echo anvuFqZ9an | sudo -S /opt/f-secure/mdr/mdr/bin/activate --subscription-key=T6PR-MJQC-L3FC-UXEE-UEEQ --tags=Archetype=Creative,OpCo=Ogilvy,SubOpCo=Pennywise,Region=APAC,City=Hyderabad,OS=Linux,Platform=`hostname`Workstation,ITSupport=WPP,Cloud=OnPremise
sleep 15
echo anvuFqZ9an | sudo -S systemctl -t service  | grep "sophos"
echo anvuFqZ9an | sudo -S systemctl -t service  | grep "mdatp"
echo anvuFqZ9an | sudo -S systemctl -t service  | grep "f-secure"
sleep 15
echo anvuFqZ9an | sudo -S wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo anvuFqZ9an | sudo -S dpkg -i google-chrome-stable_current_amd64.deb
sleep 15
echo anvuFqZ9an | sudo -S wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_119.0.2151.44-1_amd64.deb
echo anvuFqZ9an | sudo -S dpkg -i microsoft-edge-stable_119.0.2151.44-1_amd64.deb
sleep 15
echo anvuFqZ9an | sudo -S snap install teams-for-linux
sleep 15
echo anvuFqZ9an | sudo -S rm -rf google-chrome-stable_current_amd64.deb microsoft-edge-stable_119.0.2151.44-1_amd64.deb
sleep 15
echo anvuFqZ9an | sudo -S reboot
