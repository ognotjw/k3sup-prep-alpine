#!/bin/bash

echo "Script has started"

echo "SSH stuff"
sudo sed -i "s,PasswordAuthentication yes,PasswordAuthentication no,g" "/etc/ssh/sshd_config"
echo "Done"

exit 0
