#!/bin/bash

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
)

for pack in "${Packages[@]}"
do
    echo "Installing $pack"
    sudo eopkg it $pack -y
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
