
install:
	ln -sf $(PWD)/vimrc $(HOME)/.vimrc
	mkdir -p $(HOME)/.vim
	vim +PlugInstall +GoInstallBibaries +qall

