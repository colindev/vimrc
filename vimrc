set nocompatible              " be iMproved, required
filetype off                  " required

set title
set fileencodings=utf8
set termencoding=utf8
set encoding=utf8
set backspace=indent,eol,start
set t_Co=256
set nowrap
set tabstop=4
set tags=tags
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set number
set cursorline
set autoread
set autoindent
set copyindent

silent ! mkdir -p ~/.vim_swap > /dev/null 2>&1
set directory^=$HOME/.vim_swap/

silent ! mkdir -p ~/.vim > /dev/null 2>&1
if empty(glob("~/.vim/bundle/Vundle.vim"))
	execute '!git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jonathanfilip/vim-lucius'

call vundle#end()

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
" let g:syntastic_debug = 1

" golang
let g:syntastic_go_checkers = ['go', 'govet', 'errcheck']
let g:go_list_type = 'quickfix'
let g:go_fmt_command = 'goimports'
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1

" python
let python_highlight_all = 1

"" UI
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'bubblegum'

" airline theme unicode symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = 'L'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = '|'
let g:airline_symbols.whitespace = 'Ξ'

" maps
map <C-\> :NERDTreeToggle<CR>
nnoremap <C-a> I
nnoremap <C-e> A
nnoremap <Leader>" viw<esc>bi"<esc>ea"<esc>
nnoremap <Leader>' viw<esc>bi'<esc>ea'<esc>

" colors
silent! colorscheme lucius
silent! LuciusDark
