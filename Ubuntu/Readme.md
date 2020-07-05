# Ubuntu

## Acronym
* CIDR :  Classless Inter-Domain Routing

## CLI basic
### Network
````Batch
#Before
route
#Test host (next subnet)
ping 172.16.5.1
#Syntax : ip route add <subnet/cidr>
#After
ip route add 172.16.5.0/24 via 10.0.0.101 dev eth0
route
````
