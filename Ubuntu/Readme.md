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
vi /etc/network/interfaces
up route add -net 192.168.40.0/24 gw 192.168.30.1 dev em1
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
