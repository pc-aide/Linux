# netplan

---

## File
````sh
vim /etc/netplan/01-netcfg.yaml
````

---

## DHCP IP
````sh
network:
  version: 2
  renderer: networkd
  ethernets:
    ens3:
      dhcp4: yes
````

---

## Static IP 
````sh
network:
  version: 2
  renderer: networkd
  ethernets:
    ens3:
      dhcp4: no
      addresses:
        - 192.168.121.221/24
      gateway4: 192.168.121.1
      nameservers:
          addresses: [8.8.8.8, 1.1.1.1]
````

---

## man ip addr
````sh
ip addr show dev ens3

# apply change in /etc/netplan/01-netcfg.yaml
sudo netplan apply
````
