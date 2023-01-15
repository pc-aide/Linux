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
|1|NTP |`sudo systemctl restart systemd-timesyncd`<br/><br/>`systemctl status systemd-timesyncd`|systemd-timesyncd.service - Network Time Synchronization<br/>Loaded: loaded (/lib/systemd/system/systemd-timesyncd.service; enabled; vendor prese<br/>Active: active (running) since Sun 2023-01-15 06:39:12 EST; 5h 11min ago<br/>Docs: man:systemd-timesyncd.service(8)<br/>Main PID: 3769 (systemd-timesyn)<br/>Status: "Idle."<br/>Tasks: 2 (limit: 28714)<br/>Memory: 1.2M<br/>CGroup: /system.slice/systemd-timesyncd.service<br/>─3769 /lib/systemd/systemd-timesyncd|
