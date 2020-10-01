#!/bin/bash

# List of packages to install for Ubuntu
Packages=(
    neovim
    neofetch
    git
    nodejs
    curl
    emacs
)

# List of packages to install for Solus
Solus_packages=(
    xbacklight
    neovim
    neofetch
    compton
    feh
    i3
    rofi
    polybar
    git
    cava
    redshift
    node
    curl
)

# Determine which OS I am on
# looks like I can find the string Ubuntu in /proc/version 
sudo apt-get update

# Should track to see which packages were not installed 
# properly and report them at the end.
for package in "${Packages[@]}"
do
    echo "Installing $package"
    sudo apt-get install -y $package
done

echo 

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Maybe I need to do this first.. Also should fail this if
# there is no public ssh key yet.
#if [ ! -d "$HOME/.git" ]
#then 
    #echo "Getting dotfiles"
    #cd $HOME
    #git init 
    #git remote add origin git@github.com:thesudorm/dotfiles.git
    #git fetch --all 
    #git reset --hard origin/master
#fi
