#!/bin/bash

mkdir -p app/services
cd app/services

repos=(
     'Path.XXX.git'
)

for repo_name in ${repos[@]}; do
    basename=$(basename $repo_name)
    filename=${basename%.*}
    directory=${filename%-*}

    echo "Checking $directory service"

    if [ ! -d "$directory" ]; then
        echo "Creating the $directory service"
        git clone $repo_name
        mv $filename $directory
    fi
done
