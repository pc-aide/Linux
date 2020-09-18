# lsblk
* list block devices

## Syntax

## Switch
* -a --all
* -f --fs
* -o --output list
    * name, label, mountpoint, size, uid, etc
* -l --list

## Examples
````bash
# Onlly my root
lsblk -f
````
[<img src="https://i.imgur.com/SY2xsRZ.png">](https://i.imgur.com/SY2xsRZ.png)

````bash
# New volume
lsblk -a
````
[<img src="https://i.imgur.com/fq6Crl8.png">](https://i.imgur.com/fq6Crl8.png)


````bash
lsblk -o name,label,mountpoint,size
````
[<img src="https://i.imgur.com/R7d8UsY.png">](https://i.imgur.com/R7d8UsY.png)
