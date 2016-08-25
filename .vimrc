" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
	" Ensure all needed directories exist  (Thanks @kapadiamush)
	execute 'mkdir -p ~/.vim/plugged'
	execute 'mkdir -p ~/.vim/autoload'
	" Download the actual plugin manager
	execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

silent !mkdir ~/.vim/swap > /dev/null 2>&1
set directory^=$HOME/.vim/swap//

set guifont=Inconsolata_for_Powerline:h10:cANSI
let g:airline_powerline_fonts = 1
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2

set t_Co=256
set nowrap
set tabstop=4
set tags=tags
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set number
set autoindent
set copyindent

call plug#begin()

Plug 'fatih/vim-go'
Plug 'jonathanfilip/vim-lucius'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on
syntax on


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" golang
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:go_list_type = 'quickfix'
let g:go_fmt_command = 'goimports'
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1

"" UI
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'bubblegum'

" maps
map <C-\> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" colors
colorscheme lucius
LuciusDark
