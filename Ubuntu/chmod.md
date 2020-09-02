# chmod

## Permissions
### Symbols 
* d = Directory
* r = Read
* W = Write
* x = Execute
* u = User
* a = All
* g = Group
* o = Other
* + = Add
* - = Remove

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
#### Digit
````Bash
# Add read
chmod 400 *.pem
````
[<img src="https://i.imgur.com/0besxhj.png">](https://i.imgur.com/0besxhj.png)

#### Read Human
````Bash
# Add read to group & owner
chmod go+r *
````
[<img src="https://i.imgur.com/ulmsQS4.png">](https://i.imgur.com/ulmsQS4.png)
