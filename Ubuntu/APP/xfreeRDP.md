# xfreeRDP

## Search
````bash
apt search --name-only ^freerdp-x11
````
[<img src="https://i.imgur.com/iZqeLeC.png">](https://i.imgur.com/iZqeLeC.png)

## Switch
1) -size: 
   * Default (implicit) : 1024x768
   * 1440x900
2) /v - host
3) /u - user
4) /sound:sys:alsa
5) +clipboard
6) xfreerdp /monitors:1,2 /multimon /v:<host>

## Files
* /home/ubuntu/.config/freerdp/known_hosts

## Example
* EC2 Windows Server:
````bash
xfreerdp /v:3.96.146.170 /size:1024x768  /u:Administrator /monitors:2 #rdp-WS2019
````
[<img src="https://i.imgur.com/560b4r5.png">](https://i.imgur.com/560b4r5.png)

