#!/bin/bash

read -p "Enter the package name:" package_name

echo "Updating the system and Installing the package"

sudo apt update
sudo apt install $package_name -y

echo "Check the service status"

read -p "Enter the service name" service_name

systemctl start $service_name
systemctl status $service_name

