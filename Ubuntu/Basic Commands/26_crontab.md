# crontab

---

## switch
* -e --the current crontab using the editor specified by the VISUAL or EDIROR environment variable

[<img src="https://i.imgur.com/knZkJcm.png">](https://i.imgur.com/knZkJcm.png)

---

## 01 job | each reboot
````sh
 CleanUp *.png in Picture Folder
@reboot rm /home/ubuntu/Pictures/*.png
````

---
