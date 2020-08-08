: '
-----------------------------------------------------------------------------------
  Home: https://www.utorrent.com/downloads/linux
  How to install + cfg: https://www.linuxbabe.com/ubuntu/install-utorrent-ubuntu-18-04-19-04
  
  Tested on Ubuntu-20.04-live-server-amd64.iso
  
  Server
    ufw allow 8080/tcp
    ufw allow 6881/tcp
    
  O/P
    https://imgur.com/ZwNbbKq
-----------------------------------------------------------------------------------
'

#Latest Update/Upgrade
apt update
apt upgrade -y

#Lib + prerequisite
#libssl1.0.0 | Not Exist on Ubuntu-20.04*server*
apt install -y  libssl-dev cifs-utils

#https://imgur.com/AMCz0a7
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb
#https://imgur.com/VipRgpG
sudo apt install ./libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb

#Download SRV
#https://imgur.com/WJM7m3M
# -o --output-document=file
wget http://download-new.utorrent.com/endpoint/utserver/os/linux-x64-ubuntu-13-04/track/beta / -O utorrent.tar.gz

#Extract
#-C --directory=DIR
#-x --extract
#-v --version Print program version & copyright information & exit
#-f --file=ARCHIVE
#https://imgur.com/ZvpSJcz
tar -zxvf utorrent.tar.gz -C /opt/

#Create User + Group
adduser utorrent
addgroup utorrent
#Add utorrent in utorrent group
adduser utorrent utorrent

#Permission
#-R --Recursive
chmod utorrent:utorrent /opt/uttorent-server-alpha-v3_3/ -R

#Link 
ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver

#Start uTorrent
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ &

#Auto start
#https://github.com/pc-aide/Ubuntu18.04.4/blob/master/uterserver.service
vim.tiny /etc/systemd/system/utserver.service
systemctl start utserver
systemctl enable utserver

#URL
http:<IP>:8080/gui/web/index.html

#Login
admin:<blank>

#Update Cred

#Directory default
