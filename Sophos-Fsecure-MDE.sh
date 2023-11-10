#!/bin/bash
echo anvuFqZ9an | sudo -S apt update
echo anvuFqZ9an | sudo -S apt upgrade -y
echo anvuFqZ9an | sudo -S apt install -y auditd libcurl4 libfuse2 python3 git vim htop net-tools openssh-server libpam-pwquality
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
echo anvuFqZ9an | sudo -S wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
echo anvuFqZ9an | sudo -S sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo anvuFqZ9an | sudo -S apt-get update
echo anvuFqZ9an | sudo -S apt-get install google-chrome-stable
sleep 15
echo anvuFqZ9an | sudo -S curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
echo anvuFqZ9an | sudo -S install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo anvuFqZ9an | sudo -S sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
echo anvuFqZ9an | sudo -S rm microsoft.gpg
echo anvuFqZ9an | sudo -S apt update
echo anvuFqZ9an | sudo -S apt install microsoft-edge-stable
sleep 15
echo anvuFqZ9an | sudo -S snap install teams-for-linux
sleep 15
echo anvuFqZ9an | sudo -S sed -i 's/#\?PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
echo anvuFqZ9an | sudo -S systemctl restart sshd.service
sleep 15
echo anvuFqZ9an | sudo -S echo -e "install usb-storage /bin/true" | sudo tee /etc/modprobe.d/usb-storage.conf
echo anvuFqZ9an | sudo -S sed -i '/^password\s*requisite\s*pam_pwquality\.so\s*retry=3/s/$/ dcredit=-1 lcredit=-1 ocredit=-1 ucredit=-1/' /etc/pam.d/common-password
echo anvuFqZ9an | sudo -S sed -i '/^password\s*\[success=2 default=ignore\]\s*pam_unix\.so\s*obscure use_authtok try_first_pass yescrypt/s/$/ minlen=8 remember=5/' /etc/pam.d/common-password
sleep 15
echo anvuFqZ9an | sudo -S usermod -aG sudo supervision
echo anvuFqZ9an | sudo -S reboot
