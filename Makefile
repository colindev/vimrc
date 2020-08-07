
install: $(HOME)/.vim vim-plug
	ln -sf $(PWD)/vimrc $(HOME)/.vimrc
	vim +PlugInstall +qall
	[ "`type -t go 2>/dev/null`" == "file" ] && vim +GoInstallBibaries +qall

$(HOME)/.vim:
	mkdir -p $(HOME)/.vim

vim-plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
