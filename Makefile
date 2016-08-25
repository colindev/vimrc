install: vim-plug
	ln -sf $(PWD)/vimrc $(HOME)/.vimrc
	mkdir -p $(HOME)/.vim
	vim +PlugInstall +qall

vim-plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
