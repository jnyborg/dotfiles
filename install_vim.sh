#!/bin/bash

# Setup Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Symlink the vimrc in this repo to the local vimrc
ln -s ~/git/dotfiles/vim/.vimrc ~/.vimrc

# Symlink snippets in this folder to the .vim folder
ln -s ~/git/dotfiles/vim/my-snippets/ ~/.vim/


