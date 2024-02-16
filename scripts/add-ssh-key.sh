#!/bin/bash

# KEY_FILE=/path/to/public/key 
# Edit this KEY_FILE Path to your Public SSH Key 
KEY_FILE=/path/to/public/key 

USER_PASS="password"

for user in ansible root; do
  for os in ubuntu centos; do
    for instance in {1..3}; do
      if [ "$os" == "ubuntu" ]; then
        host="ubuntu$instance"  
      else
        host="centos$instance"
      fi
      
      echo "Copying key to $host for user $user"
      sshpass -p "$USER_PASS" ssh-copy-id -i "$KEY_FILE" -o StrictHostKeyChecking=np  "$user@$host"
    done
  done
done


echo " Done !"