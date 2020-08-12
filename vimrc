set nocompatible              " required
filetype off                  " required

set title
set number
set nowrap
set scrolloff=5
set backspace=2 "indent,eol,start

""" encoding
set fileencodings=utf8
set termencoding=utf8
set encoding=utf8

""" tab
set expandtab
set smarttab

""" indent
set autoindent
set smartindent
set copyindent
set shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4

""" cursors
set cursorline
"set cursorcolumn
"set autoread
"autocmd CursorHold,CursorHoldI * checktime

""" color
set t_Co=256

""" mouse
"set mouse

""" close all bell
set novisualbell
set noerrorbells
set visualbell t_vb=

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
let mapleader = ' '
nnoremap <space> <Nop>
map <C-\> :NERDTreeToggle<CR>
nnoremap <C-a> I
nnoremap <C-e> A
inoremap <C-a> <esc>I
inoremap <C-e> <esc>A
nnoremap <C-x> :q!<CR>
nnoremap <Leader>" viw<esc>bi"<esc>ea"<esc>
nnoremap <Leader>' viw<esc>bi'<esc>ea'<esc>

" colors
silent! colorscheme lucius
silent! LuciusDark
