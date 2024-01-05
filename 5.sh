echo "Script has started"

echo "Sudo stuff"
sudo sed -i "/alpine ALL=(ALL) NOPASSWD:ALL/d" "/etc/sudoers"
echo "Done"

exit 0
