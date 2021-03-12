" Required for vundle
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Begin vundle plugins
" Plugins installed with :PluginInstall
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Format .md tables with <leader>tm
Plugin 'dhruvasagar/vim-table-mode'

" Show changes in git repos
Plugin 'airblade/vim-gitgutter'

" Commenting with gc{motion}
Plugin 'tomtom/tcomment_vim'

" Show indenting on filetype with <leader>ig
Plugin 'nathanaelkane/vim-indent-guides'

" Minimal status bar
Plugin 'itchyny/lightline.vim'

" Solarized color scheme
Bundle 'altercation/vim-colors-solarized'

" Distraction free with :Goyo
Plugin 'junegunn/goyo.vim'

" Surrounding and unsurrounding with cs{char} ds{char} ys{char}
Plugin 'tpope/vim-surround'

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

" Load filetype-specific indenting
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

" Leader is space
nnoremap <SPACE> <Nop>
let mapleader=" "

" Use smallest visual indents
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

" For bug with Lightline
set laststatus=2

" Dont double show mode w/ lightline
set noshowmode

" Lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" Format JSON with this command
com! FormatJSON %!python -m json.tool

" Update gitgutter diff faster
set updatetime=100

" Fix gitgutter color scheme https://github.com/airblade/vim-gitgutter/issues/164
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" Paste like a normal human being
set paste

" Indent based folding
set foldmethod=manual

" Dont start folded
set nofoldenable

" Probably need to start a vim aliases file

" Faster split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make Y consistent with C and D
nnoremap Y y$

" Fast reload of vimrc
nnoremap <Leader>r :source $MYVIMRC<CR>

" Use tab and shift tab to indent and de-indent code
nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

" Source vimrc on filechange
autocmd bufwritepost .vimrc source $MYVIMRC
