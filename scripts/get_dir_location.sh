#!/bin/bash
GREEN="\033[0;32m"
YELLOW="\033[33m"
MAGENTA="\033[35m"
NC="\033[0m"

function dir_location () 
{
    # Display cartridge that is currently being updated
    echo -ne -e "$YELLOW _______________________________$NC $GREEN updating > $MAGENTA $1 $NC\r"
    echo ""
    sleep 0.05
    echo -ne "\n"
}

dir_location $1