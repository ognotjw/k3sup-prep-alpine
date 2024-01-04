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

echo "Setting editor to nano"
echo "export EDITOR=/usr/bin/nano" >> /etc/profile
sleep 5
echo "export VISUAL=/usr/bin/nano" >> /etc/profile
echo "Done"

echo "Sudo stuff"
addgroup sudo
addgroup alpine sudo
echo "alpine ALL=(ALL) NOPASSWD:ALL" >> "/etc/sudoers"
echo "Done"

echo "SSH stuff"
sed "s,#PermitRootLogin prohibit-password,PermitRootLogin no,g" "/etc/ssh/sshd_config"
sed "s,#PubkeyAuthentication yes,PubkeyAuthentication yes,g" "/etc/ssh/sshd_config"
sed "s,#PasswordAuthentication yes,PasswordAuthentication yes,g" "/etc/ssh/sshd_config"
rc-service sshd restart
echo "Done"

while true
do
	echo "Don't forget to check the instructions for the next steps. Continue? Y/n (case-sensitive)"
	read answer

	if [ "$answer" == "Y" ]
	then
    echo "Ok"
    break
  else
  	echo "Try again"
  fi
done
echo "Done"

echo "Rebooting in 1 minute"
sleep 60
reboot
