#!/bin/bash

echo "setup is starting."
cp -r fonts ~/.fonts
cp vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/kiith-sa/DSnips.git ~/.vim/UltiSnips

vim +PluginInstall +qall

if [ -f /etc/fedora-release ]
then
	sudo dnf install automake gcc gcc-c++ kernel-devel cmake \
	       python-devel python3-devel -y
else
	sudo apt-get install build-essential cmake \
		python-dev python3-dev -y
fi

sh ~/.vim/bundle/YouCompleteMe/install.py
#--clang-completer

echo "setup was done."
