#!/bin/bash
function run_submodules_update ()
{
    for d in ./*; do
        if [ -d $d ]; 
        then
            cd $d
            if [ -e "./package.json" ];
            then
                bash ../scripts/get_dir_location.sh $d
                bash ../scripts/check_current_branch.sh $d
                bash ../scripts/update_submodules.sh $d
            fi
            cd ..
        fi
    done
}

run_submodules_update