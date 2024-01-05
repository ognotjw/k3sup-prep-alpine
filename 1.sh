#!/bin/ash

echo "Script has started"

echo "Checking for root"
if [ "$(whoami)" == "root" ]
then
	echo "Done"
else
	echo "Run this script in root again"
	sleep 5
  exit 1
fi

echo "Install necessary packages"
apk -U upgrade
apk add curl sudo bash
echo "Done"

echo "Change shell to bash"
sed -i "s,/bin/ash,/bin/bash,g" "/etc/passwd"
echo "Done"

echo "Rebooting in 1 minute"
sleep 60
reboot
