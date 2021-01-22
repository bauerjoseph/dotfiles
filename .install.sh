#!/bin/bash

# List of packages to install
Packages=(
    neovim
    neofetch
    git
    nodejs
    curl
    emacs
    dunst
    sway
    vlc
    cmatrix
    golang
)

# Determine which OS I am on
# looks like I can find the string Ubuntu in /proc/version

sudo dnf update # hard coding for Fedora for now

# Should track to see which packages were not installed 
# properly and report them at the end.
#for package in "${Packages[@]}"
#do
    #echo "Installing $package"
    #sudo dnf install $package -y
#done

#echo 

# Doom Emacs
# make these fail if the directory already exists
if [ ! -d "$HOME/.emacs.d" ]; then
    git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
    ~/.emacs.d/bin/doom install
else
    echo "Doom emacs already installed"
fi

# Base 16 shell color themes
if [ ! -d "$HOME/.config/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
else
    echo "Base 16 themes already installed"
fi

# Maybe I need to do this first.. Also should fail this if
# there is no public ssh key yet.
#
# Would be pretty pog if I could somehow automate making and adding an SSH key on gitlab.

#if [ ! -d "$HOME/.git" ]
#then 
    #echo "Getting dotfiles"
    #cd $HOME
    #git init 
    #git remote add origin git@github.com:thesudorm/dotfiles.git
    #git fetch --all 
    #git reset --hard origin/master
#fi
