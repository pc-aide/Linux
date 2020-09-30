# curl

## Acronym
* ISP - Internet Service Provider (IPv4 Public - default : dynmac IP)

## Switch
- s --silent
- I --Head
- L --Location

## Examples
### Location
````bash
curl -L localhost:8080
````
[<img src="https://i.imgur.com/1xPplP1.png">](https://i.imgur.com/1xPplP1.png)
[<img src="https://i.imgur.com/2hI7PiV.png">](https://i.imgur.com/2hI7PiV.png)

### MyISP
````bash
curl ifconfig.me; echo
````
[<img src="https://i.imgur.com/HRMqgUR.png">](https://i.imgur.com/HRMqgUR.png)

### Head
* (get http-mothods)
````bash
curl -I localhost:8080
````
[<img src="https://i.imgur.com/fxOIlRI.png">](https://i.imgur.com/fxOIlRI.png)
