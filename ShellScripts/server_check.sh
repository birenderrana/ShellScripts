#!/bin/bash

# 1. Store the service name
service="nginx"

# 2. Ask user
read -p "Do you want to check the status of $service? (y/n): " answer

# 3. Check answer
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    # 4. Check service status
    if systemctl is-active --quiet "$service"; then
        echo "$service is active"
    else
        echo "$service is not active"
    fi
else
    echo "Skipped."
fi

