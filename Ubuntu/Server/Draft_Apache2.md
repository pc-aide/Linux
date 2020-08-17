# Apache2

## Acronym
* fw - firewall

## Regex
* ^ : first string charactere
* $ : last string charactere

## Apache version
* Apache2
* 

## Doc
* [How To Install the Apache Web Server on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-18-04)

## Target
* Ubuntu Server 18.04 LTS

## Seach
````Bash
apt search --name-only ^apache2$
````
[<img src="https://i.imgur.com/Gzba1WU.png">](https://i.imgur.com/Gzba1WU.png)

## Install
````Bash
apt install -y apache2
````

## fw
````Bash
ufw app list
````
[<img src="https://i.imgur.com/q2iocqD.png">](https://i.imgur.com/q2iocqD.png)
