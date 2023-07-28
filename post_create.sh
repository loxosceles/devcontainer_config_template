#!/bin/sh

CONFIG_FILE=./.env
if [ -f "$CONFIG_FILE" ]; then
    echo "$CONFIG_FILE exists."
    source .env
    echo $REPOSITORY
else 
    echo "Configation file $CONFIG_FILE not found."
    exit 1
fi

echo "Setting up dotfiles..."
chezmoi init --apply ${REPOSITORY} 
