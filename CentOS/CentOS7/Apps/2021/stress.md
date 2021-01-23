# stress

## ftp
* `wget ftp://fr2.rpmfind.net/linux/dag/redhat/el7/en/x86_64/dag/RPMS/stress-1.0.2-1.el7.rf.x86_64.rpm`


[<img src="https://i.imgur.com/kAvXdDb.png">](https://i.imgur.com/kAvXdDb.png)

---

## LocalInstall
* `yum localInstall stress-1.0.2-1.el7.rf.x86_64.rpm`

[<img src="https://i.imgur.com/lnQnLjb.png">](https://i.imgur.com/lnQnLjb.png)

---

## Switchs
1) cpu --cpu N
  * spawn N workers spinning on sqrt()

* `stress --cpu 2 --timeout 90`
* `stress -c 16`

[<img src="https://i.imgur.com/COWHvrT.png">](https://i.imgur.com/COWHvrT.png)
[<img src="https://i.imgur.com/aHjja75.png">](https://i.imgur.com/aHjja75.png)

* Monitoring:

[<img src="https://i.imgur.com/1u5EZyu.png">](https://i.imgur.com/1u5EZyu.png)
[<img src="https://i.imgur.com/EJ2fFNG.png">](https://i.imgur.com/EJ2fFNG.png)
[<img src="https://i.imgur.com/llkXkF4.png">](https://i.imgur.com/llkXkF4.png)
