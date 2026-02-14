#!/bin/bash

read -p "Check the package to verify" PACKAGE_NAME

if dpkg -s "$PACKAGE_NAME" &> /dev/null; then
    echo "Package '$PACKAGE_NAME' is installed."
else
    echo "Package '$PACKAGE_NAME' is not installed."
fi

