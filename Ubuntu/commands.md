# commands

---

## network
|n|name|e.g.|O/P|
|-|----|----|---|
|1|tcpflow|tcpflow -i eth0 -gc||
### curl
|n|name|e.g.|O/P|
|-|----|----|---|
|1|default|# -s --silent<br/>`curl -s https://www.rds.ca`||
|2|recurse|`curl -s https://www.rds.ca/\?recurse`|[<img src="https://i.imgur.com/ehnbIFh.png">](https://i.imgur.com/ehnbIFh.png)|
|3|PUT|# -d --data \| -X --request<br/>`curl -s https://www.rds.ca/test101 -d bar -X PUT`|[<img src="https://i.imgur.com/fLG5ODv.png">](https://i.imgur.com/fLG5ODv.png)|
|4|index (versioning)|# consul<br/>`curl -s http://localhost:8500/v1/kev/\?recurse\&index\=1186`||
|5|wait|`curl -s http://localhost:8500/v1/kev/\?recurse\&index\=1186\&wait\=10s`|
|6|verbose|`curl curl https://www.rds.ca -v | more`|[<img src="https://i.imgur.com/T3XtGqu.png">](https://i.imgur.com/T3XtGqu.png)|

---

## RDP
|n|name|e.g.|O/P|
|-|----|----|---|
|1|default|# /v:host<br/># /u:usr <br/>`xrdp /v:192.168.1.202 /u:admin`||
