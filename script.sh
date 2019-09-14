#!/bin/bash
RED=`echo "\033[31m"`
GREEN='\033[0;32m'
NC='echo \033[0m'

function update_submodule () {
    cd $1
    # if [[ "$CURRENT_BRANCH" -ne "develop" ]]; then
    #       echo "Fatal: Current branch is not master"
    #       return;      # I need to abort here!
    # fi
    echo -e "$RED Running yarn in folder $NC $1"
    cd ..
}

for d in *; do
    if [[ -d $d ]]; 
    then
        update_submodule $d
    fi
done

git init
git add .
git commit -m "your message"
git branch develop
git checkout develop