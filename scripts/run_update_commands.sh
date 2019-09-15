#!/bin/bash
run_update_commands () 
{
    # Check if cartridge has build command listed in scripts
    if [[ $(npm run | grep "^  build" | wc -l) > 0 ]]
    then 
        npm run build
    else
        npm run compile:js
        npm run compile:scss 
        npm run uploadCartridge
    fi
}

run_update_commands