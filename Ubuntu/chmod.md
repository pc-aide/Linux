# chmod

## Permissions
### Symbols (exclude special symbol as "S")
* d = Directory
* r = Read
* W = Write
* x = Execute

### Table
|Digit | Read Human | Binary|
|------|------------|-------|
|7     |rwx         |111    |
|6     |rw-         |110    |
|5     |r-x         |101    |
|4     |r--         |100    |
|3     |-wx         |011    | 
|2     |-w-         |010    |
|1     |--x         |001    |
|0     |---         |000


### E.g
````BAsh
chmod 400 *.pem
````
[<img src="https://i.imgur.com/0besxhj.png">](https://i.imgur.com/0besxhj.png)
