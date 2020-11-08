# scp

* secure copy (remote file copy program)

## Switchs

* -r --recursively 
* -i --identity_file

## Examples
### 01 - copy folder to another host
````bash
# sure : (rm -rf node_modules) inside - demoNode.js
scp -r -i <private_key> <local_folder> ec2-user@<ip>:/home/ec2-user
````
[<img src="https://i.imgur.com/8Ywbzzl.png">](https://i.imgur.com/8Ywbzzl.png)
