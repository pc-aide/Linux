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
