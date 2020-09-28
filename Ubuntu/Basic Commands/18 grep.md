# grep

## Syntax

## Switch
* A \<number\> --show me **after** the match
* B \<number\> --show me **before** the match
* i --ignore-case 

## Example
````bash
cat .aws/credentials | grep -A 3 mfa
````
[<img src="https://i.imgur.com/YBrYQJL.png">](https://i.imgur.com/YBrYQJL.png)

````bash
# 2x string
aws s3api list-object-versions --bucket demo-01-origin | grep 'Key\|ID'
````
[<img src="https://i.imgur.com/SYRSB7i.png">](https://i.imgur.com/SYRSB7i.png)
