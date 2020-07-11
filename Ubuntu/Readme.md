# Ubuntu

## Acronym
* CIDR :  Classless Inter-Domain Routing

## CLI basic
### Network
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
vim /etc/sysconfig/network-scripts/route-eth0
````

````Batch
#-I --all-ip-addresses
hostname -I
````
