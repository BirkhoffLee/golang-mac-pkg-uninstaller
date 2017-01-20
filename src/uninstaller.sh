#!/bin/bash

echo "This script will delete these files/directories permanently:"
echo "/usr/local/go"
echo "/etc/paths.d/go"
echo ""
read -p "Proceed? " yn

if echo "$yn" | grep -iq "^y" ;then
  sudo rm -rf /usr/local/go
  sudo rm /etc/paths.d/go
  echo Done.
else
  echo Aborting.
fi
