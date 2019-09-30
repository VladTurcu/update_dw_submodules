#!/bin/sh

run_submodules_update ()
{
    for d in $(find * -type d) ; do
            if [ -e "./${d}/package.json" ];
            then
		( cd ${d} ; bash ../scripts/get_dir_location.sh $d )
		( cd ${d} ; bash ../scripts/check_current_branch.sh $d )
		( cd ${d} ; bash ../scripts/update_submodules.sh $d )
            fi
    done
}

run_submodules_update
