#!/bin/bash

echo "Script has started"

while true
do
	echo "Don't forget to copy the ssh keys to the root. Continue? Y/n (case-sensitive)"
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
