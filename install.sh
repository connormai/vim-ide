#!/bin/bash

mv fonts .fonts
mv vim .vim
mv vimrc .vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sh vim +PluginInstall +qall

sh .vim/bundle/YouCompleteMe/install.py

echo "setup was done."
