#!/bin/bash

echo "Making vim backup directory.."
mkdir ~/.vimbackups

#echo "Installing vim-plug.."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim -c PlugInstall -c q! -c q!
