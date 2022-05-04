#!/bin/bash

echo "Install common packages"
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -y
sudo apt-get install net-tools

echo "Install ansible in master machine"
machine=$(hostname)
if [[ $machine  ==  "ansible_master" ]]; then
   sudo apt-get install ansible -y
fi 

echo "Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.16.16.100   ansible.example.com     ansible_master
172.16.16.101   db.example.com          db
172.16.16.102   app.example.com         app
EOF