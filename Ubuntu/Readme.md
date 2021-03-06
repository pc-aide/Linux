# Ubuntu

## Acronym
* CIDR :  Classless Inter-Domain Routing

## CLI basic
### Network
#### URL
* https://www.networkinghowtos.com/howto/adding-persistent-static-routes-on-ubuntu-18-04-and-higher-using-netplan/
#### CLI
````Batch
#Before
route
#Test host (next subnet) where not reached
ping 172.16.5.1
#Syntax : ip route add <subnet/cidr>
#After (temporary - next reboot lost settings)
ip route add 172.16.5.0/24 via 10.0.0.101 dev eth0
route
````

````Batch
#Persist
vi /etc/netplan/01-network-manager-all.yaml
# This file describes the network interfaces available on your system
# For more information, see netplan(5).
network:
  version: 2
  renderer: networkd
  ethernets:
    eno1:
      dhcp4: true
      routes:
      - to: 192.168.44.0/24
        via: 192.168.0.1
````

````Bath
#To make these changes take effect
sudo ifdown em1 && sudo ifup em1
````

````Batch
#Show numerial addresses instead of trying to determine sybolic
#host names. This is useful if you are trying to determine why
#the route to your nameserver has vanished
route -n
````

````Batch
#-I --all-ip-addresses
hostname -I
````

````Batch
#pkill - procress.name kill
pkill nautilus
````

````Batch
#pgrep - process grep | pgrep <process>
pgrep firefox
````
[<img src="https://i.imgur.com/GZZcNfl.png">](https://i.imgur.com/GZZcNfl.png)

### Services
#### old.service
* Location : /etc/init.d/\<FolderDaemon>\
* service --status-all

[<img src="https://i.imgur.com/ElAPewg.png">](https://i.imgur.com/ElAPewg.png)

#### New.systemctl
* systemctl start utserver

##### PS1= in .bashrc
````Bash
# http://ezprompt.net/ - .bashrc PS1 generator
# reload bashrc > . ~/.bashrc
# /root/.bashrc
# Edit PS1="[\[\e[31m\]\A\[\e[m\]]\[\e[36;40m\]\W\[\e[m\]\\$ "
Vim /home/debian/.bashrc
````
[<img src="https://i.imgur.com/YKmpCBB.png">](https://i.imgur.com/YKmpCBB.png)

##### ssh
````Bash
# -i : identity file (private key)
ssh - i "EC2-Demo.pem" ec2-user@132.82.161.84
````
[<img src="https://i.imgur.com/NRH6eC8.png">](https://i.imgur.com/NRH6eC8.png)

## Format
````Bash
# Syntax: mke2fs dev/<Name.Disk>
mke2fs /dev/xvdb
````
[<img src="https://i.imgur.com/yX69lgN.png">](https://i.imgur.com/yX69lgN.png)

## Mount
````Bash
# mnt versus media : 
# Syntax : mount /dev/<Name.Disk> /mnt or /media/
````
[<img src="https://i.imgur.com/RueiJsM.png">](https://i.imgur.com/RueiJsM.png)

[<img src="https://i.imgur.com/hbC5OKp.png">](https://i.imgur.com/hbC5OKp.png)
