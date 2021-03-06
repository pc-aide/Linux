# Apache2

## Acronym
* fw - firewall

## Regex
* ^ : first string charactere
* $ : last string charactere

## file
1) /var/www/html/... (DocumentRoot - code html, php, etc)
2) file.config (port, DocumentRoot,ServerName,Log, etc)
    * vim /etc/apache2/sites-available/test.conf

3) etc/apache2/ports.conf 

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

````Bash
# Enabled if Status: inactive
ufw enable
````

````Bash
ufw status
````
[<img src="https://i.imgur.com/3vMzW7G.png">]

## IP Public
````Bash
curl -4 icanhazip.com
````
[<img src="https://i.imgur.com/Gvq798D.png">](https://i.imgur.com/Gvq798D.png)

## Default Page
[<img src="https://i.imgur.com/DfnhAfS.png">](https://i.imgur.com/DfnhAfS.png)

## Virtual Host

### test.html
````Bash
# code
cat/ var/www/html/test.html
````
[<img src="https://i.imgur.com/tXs9wqY.png">](https://i.imgur.com/tXs9wqY.png)

````Bash
# config
cat /etc/apache2/sites-available/test.conf
````
[<img src="https://i.imgur.com/294s7X9.png">](https://i.imgur.com/294s7X9.png)

````Bash
# Enable <file.conf> | a2dissite (disabled <file.conf>
a2ensite test.conf
````

````Bash
# Reload apache service
systemctl reload apache2
````

#### Browser
[<img src="https://i.imgur.com/AKs0CiF.png">](https://i.imgur.com/AKs0CiF.png)
