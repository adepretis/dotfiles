if [ ! -d "$DEST/.vim/bundle/Vundle.vim" ]
then
	git clone https://github.com/gmarik/Vundle.vim.git "$DEST/.vim/bundle/Vundle.vim"
	vim +PluginInstall +qall
fi

