24 sed

## Syntax
* sed -i 's/<OldPatern>/<NewPattern>/ file

## Examples
### 01 - old term -> new term
* 
````bash
sed -i 's/.*region.*/region = ca-central-3/' /etc/awslogs/awscli.conf
````
