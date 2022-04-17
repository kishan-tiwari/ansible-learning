#!/bin/bash

echo "Install common packages"
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -y
sudo apt-get install net-tools


machine=$(hostname)
if [[ $machine  ==  "master" ]]; then
   sudo apt-get install ansible -y
fi 

echo "Update /etc/hosts file"
cat >>/etc/hosts<<EOF
172.16.16.100   ansible.example.com     ansible-master
172.16.16.101   db.example.com          db
172.16.16.102   app.example.com         app
EOF