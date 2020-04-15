#!/bin/bash

# List of packages to install for Ubuntu
Ubuntu_packages=(
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
    nodejs
    curl
)

# List of packages to install for Solus
Packages=(
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


# Should track to see which packages were not installed 
# properly and report them at the end.
for package in "${Packages[@]}"
do
    echo "Installing $package"
    sudo apt-get install -y $package
done

echo 

# Maybe I need to do this first.. Also should fail this if
# there is no public ssh key yet.
if [ ! -d "$HOME/.git" ]
then 
    echo "Getting dotfiles"
    cd $HOME
    git init 
    git remote add origin git@github.com:thesudorm/dotfiles.git
    git fetch --all 
    git reset --hard origin/master
fi
