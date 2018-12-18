#!/bin/bash

echo "Installing curl"

sudo apt-get install curl

echo "Installing pathogen.."

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


echo "Installing vim airline"

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

echo "Installing NerdTree"

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
