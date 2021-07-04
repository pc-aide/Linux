# 01 lspci

---

## 01 | GPU
````sh
lspci -vnnn | perl -lne 'print if /^\d+\:.+(\[\S+\:\S+\])/' | grep VGA
````
[<img src="https://i.imgur.com/Q41hliy.png">](https://i.imgur.com/Q41hliy.png)
