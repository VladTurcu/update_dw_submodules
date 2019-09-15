#!/bin/bash
RED="\033[31m"
GREEN="\033[0;32m"
BOLD="\033[1m"
NC="\033[0m"

function check_branch ()
{   
    # Check if current checked out branch is develop and if not commit all changes and checkout to develop
    if [ $(git rev-parse --abbrev-ref HEAD) != "develop" ]
    then
        git commit -am "$(git rev-parse --abbrev-ref HEAD) WIP updating submodules"
        echo ""
        echo -e $GREEN "Checking out from $NC$BOLD$RED$(git rev-parse --abbrev-ref HEAD)$NC$GREEN to$NC$BOLD$RED develop$NC";
        echo ""
        git checkout master
        echo ""
    fi
}

check_branch