# PowerShell

---

## e.g.
````bash
apt-get install snap snapd -y

snap install powershell --classic

pwsh
````

[<img src="https://i.imgur.com/izIrmw3.png">](https://i.imgur.com/izIrmw3.png)

[<img src="https://i.imgur.com/lYcJ6q9.png">](https://i.imgur.com/lYcJ6q9.png)

---

## From Repository
````bash
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

dpkg -i packages-microsoft-prod.deb

apt-get update -y
apt-get install powershell -y

# Test
pwsh
````
