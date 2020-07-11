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
vi /etc/network/interfaces
up route add -net 192.168.40.0/24 gw 192.168.30.1 dev em1
````

````Batch
#To ensure the route has been set up correc
route -n
````

````Batch
#-I --all-ip-addresses
hostname -I
````
