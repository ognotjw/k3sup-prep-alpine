#!/bin/bash

echo "Script has started"

echo "Checking for root"
if [ "$(whoami)" == "root" ]
then
	echo "Done"
else
	echo "Run this script in root again"
  exit 1
fi

echo "SSH stuff"
sed -i "s,#PermitRootLogin prohibit-password,PermitRootLogin no,g" "/etc/ssh/sshd_config"
sed -i "s,#PubkeyAuthentication yes,PubkeyAuthentication yes,g" "/etc/ssh/sshd_config"
sed -i "s,#PasswordAuthentication yes,PasswordAuthentication yes,g" "/etc/ssh/sshd_config"
rc-service sshd restart
echo "Done"
