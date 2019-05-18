#!/usr/bin/sh

echo

# Install vim-plug first
if [ ! -e ~/.vim/autoload/plug.vim ]
then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo 'It looks like vim-plug is already present'
	echo 'Remove ~/.vim/autoload/plug.vim to reinstall'
	echo
fi

ln -svi $(pwd)/vimrc ~/.vimrc 
vim +PlugInstall +qall
