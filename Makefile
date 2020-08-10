
install:
	ln -sf $(PWD)/vimrc $(HOME)/.vimrc
	vim +PluginInstall +qall
	[ "`type -t go 2>/dev/null`" == "file" ] && vim +GoInstallBibaries +qall

uninstall:
	rm -rf ~/.vim ~/.vim_swap
