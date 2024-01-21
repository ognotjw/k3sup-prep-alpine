echo "Script has started"

echo "Sudo stuff"
sudo sed -i "/kube ALL=(ALL) NOPASSWD:ALL/d" "/etc/sudoers"
echo "Done"

exit 0
