#!/usr/bin/env bash

function relink_files() {
    ln -hfs ~/.config/readline/.inputrc ~/.inputrc
    ln -hfs ~/.config/bash/.bash_profile ~/.bash_profile
    ln -hfs ~/.config/vim/.vim ~/.vim
    ln -hfs ~/.config/vim/.vimrc ~/.vimrc
}

while [ -n "$1" ]; do # while loop starts
    case "$1" in
        --links) relink_files ;; # Relink prefernece files
        --brew) brew_updates ;; # Message for -b option
        --xcode) xcode_licence ;; # Message for -c option
        --pip) pip_upgrades ;; # Message for -c option
        -a) all ;; # Message for -c option
        *) echo "Option $1 not recognized" ;; # In case you typed a different option other than a,b,c
    esac
    shift
done
