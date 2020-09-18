# fstab
* static information about the filesytems can mount

## Doc
* man fstab

## Path
* /etc/fstab

## Syntax
1) \<file system\>
2) \<mount point\>
3) \<type\>
   * cifs
4) \<options\>
5) \<dump\>
6) \<pass\>

## Examples
### 01 - cred

### 02 - no cred
````bahs
# EBS-01 (AWS)
# When done, you can test with reboot if your file still mounted
/dev/xvdf /media/EBS-01 ext4 defaults,nofail 0 2
````
[<img src="https://i.imgur.com/YfJWMWg.png">](https://i.imgur.com/YfJWMWg.png)
[<img src="https://i.imgur.com/kOK3EZT.png">](https://i.imgur.com/kOK3EZT.png)
[<img src="https://i.imgur.com/zdrpMBN.png">](https://i.imgur.com/zdrpMBN.png)
