" Required for vundle
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Begin vundle plugins
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()

" Required by vundle
filetype plugin indent on

""" End vundle requirements

" Enable syntax processing
syntax enable

" Color scheme
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" Show file in title bar
set title

" Tab is 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Auto and smart indenting
set ai
set si

" Load iletype-specific indenting
"filetype indent on

" Visual autocomplete menu
set wildmenu

" Highlight matching brackets
set showmatch

" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Case insensitive search
" except when searching with caps
set ignorecase
set smartcase

" Allow Regex search
set magic

" Turn off spellcheck by default
set nospell

" Spelling with us dictionary
"set spell spelllang=en_us

" Map ':' to ';' because speed
nnoremap ; :

" Auto change file on outside change
set autoread
