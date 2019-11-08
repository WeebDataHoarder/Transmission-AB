#!/bin/bash

PS1="$"
basedir=`pwd`
tag="$1"

function update {
    cd "$basedir/$1"
    git fetch && git reset --hard "${2}"
    cd ../
    git add $1
}

update transmission "$tag"
