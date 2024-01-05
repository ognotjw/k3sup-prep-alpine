#!/bin/bash

echo "Script has started"

echo "Checking for alpine user"
if [ "$(whoami)" == "alpine" ]
then
	echo "Done"
else
	echo "Run this script with the alpine user again"
  exit 1
fi

echo "Disabling root account"
sudo passwd -l root
sudo sed -i "s,root:x:0:0:root:/root:/bin/bash,root:x:0:0:root:/root:/sbin/nologin,g" "/etc/passwd"
echo "Done"

while true
do
	echo "Don't forget to copy the ssh keys to the alpine user. Continue? Y/n (case-sensitive)"
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

exit 0
