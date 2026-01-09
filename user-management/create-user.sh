#!/bin/bash

read -p "enter username" username
sudo useradd -m $username
sudo passwd $username

#make sure user is not in sudo group

sudo deluser $username sudo

echo "user $username created without sudo access." 
