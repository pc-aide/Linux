# ping

## Swithc
* -s --PacketSize
* -f --Flood ping. For every ECHO_REQUEST sent a period ``.'' is printed, while for ever ECHO_REPLY received a backspace is printed.

## Examples
````bash
ping -s 100 192.168.1.1
````

````bash
# Need sudo
sudo ping -f 192.168.1.1
````
