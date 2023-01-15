# Commands 2023

---

## List
|n|name|e.g.|O/P|
|-|----|----|---|
|1|ntp | # /etc/systemd/timesyncd.conf<br/>`timedatectl status`|Local time: Sun 2023-01-15 06:34:31 EST<br/>Universal time: Sun 2023-01-15 11:34:31 UTC<br/>RTC time: Sun 2023-01-15 11:34:31<br/>Time zone: America/Chicago (EST, -0500)<br/>System clock synchronized: no<br/>NTP service: active<br/>RTC in local TZ: no|

---

## Services
|n|name|e.g.|O/P|
|-|----|----|---|
|1|NTP |`sudo systemctl restart systemd-timesyncd`||
