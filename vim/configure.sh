#!/bin/bash

ln -s "`pwd`/$(dirname $0)/vimrc" ~/.vimrc

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

# Configure pathogen and vundle
cp "`pwd`/$(dirname $0)/pathogen.vim" ~/.vim/autoload
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install vundle plugins
vim +PluginInstall +qall
