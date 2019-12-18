#!/bin/bash
# Script to auto upload code changes to server.
# 
# Requires the inotify-tools package 

project_name=${PWD##*/}
remote_dir="~/git/$project_name"
ssh_host="beastngrok" 
exclude_file="/home/jnyborg/git/dotfiles/scripts/auto-deploy-exclude.txt"

if [ "$1" != "" ]; then
    ssh_host=$1
else
    echo "Usage: auto-deploy.sh <ssh_host>"
    exit
fi

# Create dir at remote if not exist
ssh $ssh_host mkdir -p -v $remote_dir 

destination="${ssh_host}:${remote_dir}"
echo "Setting up sync to ${destination}"


echo 'Waiting for changes...'
while inotifywait -r -q -q -e modify,create,delete .; do
    rsync -azhi --exclude-from $exclude_file . ${destination} | grep '^<' | awk '{ print "Uploaded " $2 }'
done
