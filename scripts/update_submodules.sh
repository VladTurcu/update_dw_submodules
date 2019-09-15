#!/bin/bash
GREEN="\033[0;32m"
NC="\033[0m"

function update_submodule () 
{
    # Deleting node_module, package-lock.json pulling latest version from remote and updating cartridge
    echo -e $GREEN "Deleting node_modules and package-lock.json $NC";
    echo ""
    rm -rf node_modules package-lock.json
    echo ""
    echo -e $GREEN "Installing new packages $NC";
    echo ""
    git pull
    npm i
    bash ../scripts/run_update_commands.sh
    echo ""
    echo ""
}

update_submodule