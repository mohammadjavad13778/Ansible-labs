#!/bin/bash

#SSH_KEY=/home/ansible/.ssh/id_rsa

# Ubuntu hosts
UBUNTU_HOSTS=("ubuntu1" "ubuntu2" "ubuntu3")

# CentOS hosts  
CENTOS_HOSTS=("centos1" "centos2" "centos3")  

# Ping Ubuntu hosts
for host in "${UBUNTU_HOSTS[@]}"; do
  ansible $host -m ping
done

# Ping CentOS hosts
for host in "${CENTOS_HOSTS[@]}"; do 
  ansible $host -m ping 
done