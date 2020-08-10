
install:
	ln -sf $(PWD)/vimrc $(HOME)/.vimrc
	vim +PlugInstall +qall
	[ "`type -t go 2>/dev/null`" == "file" ] && vim +GoInstallBibaries +qall

