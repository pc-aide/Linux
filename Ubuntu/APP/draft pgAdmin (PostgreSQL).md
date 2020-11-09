# pgAdmin (PostgreSQL)

## Install
````bash
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |
sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/
`lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install pgadmin4 pgadmin4-apache2 -y
````

### apt search
````bash
apt search --name-only ^pgadmin4$
````
[<img src="https://i.imgur.com/UQyh4HK.png">](https://i.imgur.com/UQyh4HK.png)

---

## GUI
[<img src="https://i.imgur.com/A1KULXx.png">](https://i.imgur.com/A1KULXx.png)

### Create table
[<img src="https://i.imgur.com/YDfwFv6.png">](https://i.imgur.com/YDfwFv6.png)

### Columns
[<img src="https://i.imgur.com/Z45qBNo.png">](https://i.imgur.com/Z45qBNo.png)
