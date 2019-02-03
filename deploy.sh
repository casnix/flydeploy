#!/bin/sh

if (( $# != 1 )); then
    echo "Usage: $0 REPOSITORY"
    exit
fi

if [ ! -f ./repo_rc/$1 ]; then
    echo "./repo_rc/$1 : File not found!"
    exit
fi

echo "[git submodule add" $(cat ./repo_rc/$1) "]"
git submodule add $(cat ./repo_rc/$1)
# echo $(cat ./repo_rc/$1)
