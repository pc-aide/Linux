# modprobe

## Name
modprobe - Add & remove modules from the linux Kernel

## E.g.
````Batch
#Find out your USB
lsusb | grep -i serial
#
modprobe usbserial vendor=0x067b product=0x2303
#
dmesg | grep 'ttyUSB'
#
sudo chmod 777 /dev/ttyUSB0
# To connect with serial port
cu -l /dev/ttyUSB0 -s 9600
````
[<img src="https://i.imgur.com/mr0Tobi.png">](https://i.imgur.com/mr0Tobi.png)
