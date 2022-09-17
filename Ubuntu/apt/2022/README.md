# apt 2022

---

## Instal
````sh
sudo apt install -y <name>
````

---

## app installed
````sh
apt list --installed
````
[<img src="https://i.imgur.com/v9qjNEN.png">](https://i.imgur.com/v9qjNEN.png)

---

## search
````sh
apt search --name-only ^<keyWord>
````

---

## List
|n|name|desc.|O/P|
|-|----|-----|---|
|1|gdebi|simple tool to view and install deb files - GNOME GUI||
|2|terminator|multiple GNOME terminals in one window||
|3|diodon|GTK+ Clipboard manager<br/><br/>Custom keyboard :<br/> Name: diodon<br/> command: /usr/bin/diodon<br/> shotcut: ctrl+alt+h||
|4|git|fast, scalable, distributed revision control system||
|5|spacefm|Multi-panel tabbed file manager - GTK2 version||
|6|pwgen|Automatic Password generation|[<img src="https://i.imgur.com/7IHm23M.png">](https://i.imgur.com/7IHm23M.png)|
|7|ffmpeg|Tools for transcoding, streaming and playing of multimedia files|ffmpeg -i *.aac -i *.mp4 "dst/output.mp4" && rm * <br/> output: <br/> [<img src="https://i.imgur.com/FSQsKMC.png">](https://i.imgur.com/FSQsKMC.png) |
|8|indicator-multiload|Graphical system load indicator for CPU, ram, etc.|[<img src="https://i.imgur.com/8eDAgQV.png">](https://i.imgur.com/8eDAgQV.png)|
|9|freerdp2-x11|RDP client for Windows Terminal Services (X11 client)|/v:\<host\>, /u:\<user\><br/>`xfreerdp /v:vm-consul /u:admLocal`|


---

## network
|n|name|desc.|O/P|
|-|----|-----|---|
|1|curl|command line tool for transferring data with URL syntax||

---

## taskBar
|n|name|desc.|e.g.|O/P|
|-|----|-----|----|---|
|1|meteo|weather|sudo add-apt-repository ppa:bitseater/ppa<br/>sudo apt install com.gitlab.bitseater.meteo|[<img src="https://i.imgur.com/NqUzTbQ.png">](https://i.imgur.com/NqUzTbQ.png)|
