#!/usr/bin/env bash

## use zsh after

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

function install() {
    sh ./install.sh
}

function doIt() {
    
    # launch install script to install stuff then doIt ;)
    install

    # change files to .something and use it

    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	--exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude "show_files.sh" -av --no-perms . ~/
    source ~/.bash_profile
    # source ~/.zshrc
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
	doIt
    fi
fi
unset doIt
