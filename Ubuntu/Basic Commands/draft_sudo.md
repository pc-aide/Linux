# sudo

## Switch
* -s --shell
    * Run the shell specified by the SHELL env var
* -i --login
    * Run the shell specified by the target **user**'s pwd db entry as a login shell

## Examples
### 01 - shell env var
````shell
sudo -s
````
[<img src="https://i.imgur.com/gB9EwBL.png">](https://i.imgur.com/gB9EwBL.png)

### 02 - login 
````shell
sudo -i
````
[<img src="https://i.imgur.com/mqCZC2f.png">](https://i.imgur.com/mqCZC2f.png)
