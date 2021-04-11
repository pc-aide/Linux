# curl

## Acronym
* ISP - Internet Service Provider (IPv4 Public - default : dynmac IP)

## Switch
- s --silent
- I --Head
- L --Location
- H --header
- X --request <command>

## Examples
### 01 Location
````bash
curl -L localhost:8080
````
[<img src="https://i.imgur.com/1xPplP1.png">](https://i.imgur.com/1xPplP1.png)
[<img src="https://i.imgur.com/2hI7PiV.png">](https://i.imgur.com/2hI7PiV.png)

### 02 MyISP
````bash
curl ifconfig.me; echo
````
[<img src="https://i.imgur.com/HRMqgUR.png">](https://i.imgur.com/HRMqgUR.png)

### 03 Head
* (get http-mothods)
````bash
curl -I localhost:8080
````
[<img src="https://i.imgur.com/fxOIlRI.png">](https://i.imgur.com/fxOIlRI.png)

### 04 API-Key
````bash
# error 403: Forbidden
# nothing for the success
curl -H 'X-Api-Key: KeyString URL'
````
[<img src="https://i.imgur.com/BlXOHlL.png">](https://i.imgur.com/BlXOHlL.png)

### 05 port
````bash
curl -I http://rds.ca:80
````
[<img src="https://i.imgur.com/sbnmUNg.png">](https://i.imgur.com/sbnmUNg.png)
[<img src="https://i.imgur.com/vBu15ds.png">](https://i.imgur.com/vBu15ds.png)

### 06 data
````sh
crul -X PUT <URL> --data '{ "text": "Study Pro exam", "checked": true}'
````

---

## test get http (200 ok)
````sh
curl -v https://rds.ca

* Rebuilt URL to: https://rds.ca/
*   Trying 23.10.133.197...
* TCP_NODELAY set
* Connected to rds.ca (23.10.133.197) port 443 (#0)
* ALPN, offering h2
* ALPN, offering http/1.1
* successfully set certificate verify locations:
*   CAfile: /etc/ssl/certs/ca-certificates.crt
  CApath: /etc/ssl/certs
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
* TLSv1.3 (IN), TLS handshake, Server hello (2):
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
* TLSv1.3 (IN), TLS handshake, Unknown (8):
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
* TLSv1.3 (IN), TLS handshake, Certificate (11):
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
* TLSv1.3 (IN), TLS handshake, CERT verify (15):
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
* TLSv1.3 (IN), TLS handshake, Finished (20):
* TLSv1.3 (OUT), TLS change cipher, Client hello (1):
* TLSv1.3 (OUT), TLS Unknown, Certificate Status (22):
* TLSv1.3 (OUT), TLS handshake, Finished (20):
* SSL connection using TLSv1.3 / TLS_AES_256_GCM_SHA384
* ALPN, server accepted to use h2
* Server certificate:
*  subject: C=CA; ST=Ontario; L=Ottawa; O=Bell Media Inc.; OU=Bell Canada; CN=sports.bellmedia.ca
*  start date: Mar 29 20:14:16 2021 GMT
*  expire date: Mar 29 20:14:13 2022 GMT
*  subjectAltName: host "rds.ca" matched cert's "rds.ca"
*  issuer: C=US; O=Entrust, Inc.; OU=See www.entrust.net/legal-terms; OU=(c) 2012 Entrust, Inc. - for authorized use only; CN=Entrust Certification Authority - L1K
*  SSL certificate verify ok.
* Using HTTP2, server supports multi-use
* Connection state changed (HTTP/2 confirmed)
* Copying HTTP/2 data in stream buffer to connection buffer after upgrade: len=0
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
* Using Stream ID: 1 (easy handle 0x55a958dd6600)
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
> GET / HTTP/2
> Host: rds.ca
> User-Agent: curl/7.58.0
> Accept: */*
> 
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* TLSv1.3 (IN), TLS Unknown, Unknown (23):
* Connection state changed (MAX_CONCURRENT_STREAMS updated)!
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
< HTTP/2 301 
< server: AkamaiGHost
< content-length: 0
< location: https://www.rds.ca/
< cache-control: max-age=0
< expires: Sun, 11 Apr 2021 18:53:12 GMT
< date: Sun, 11 Apr 2021 18:53:12 GMT
< 
* Connection #0 to host rds.ca left intact
````
