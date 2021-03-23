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

" Autocompete engine
Plugin 'valloric/youcompleteme'

" Fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" Align text
Plugin 'junegunn/vim-easy-align'

" Format .md tables with <leader>tm
Plugin 'dhruvasagar/vim-table-mode'

" Show changes in git repos
Plugin 'airblade/vim-gitgutter'

" Commenting with gc{motion}
Plugin 'tpope/vim-commentary'

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

" Git commands in vim
Plugin 'tpope/vim-fugitive'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" More visual movment with <Leader><Leader><motion>
Plugin 'easymotion/vim-easymotion'

" Send text from one window to another 
Plugin 'karoliskoncevicius/vim-sendtowindow'

" Python code formatting with :Black
Plugin 'psf/black'

" Support for repeating plugin commands with .
Plugin 'tpope/vim-repeat'

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

" Ignore these types of files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/env/*

" Highlight matching brackets
set showmatch

" Show 'hybrid' numbers
set number
set relativenumber

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
vnoremap ; :

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
" Having this on by default seems to mess with YCM
" set paste

" Make backspace work like most other places (issue with homebrew vim)
set backspace=indent,eol,start

" Indent based folding
set foldmethod=manual

" Dont start folded
set nofoldenable

" New splits to the right/bottom
set splitbelow
set splitright

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Recommended Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Don't show loc list because it's annoying
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Use python3 for syntastic...duh
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']

" Probably need to start a vim aliases file

" Remap default send to window mappings
let g:sendtowindow_use_defaults=0

nmap <Leader>l <Plug>SendRight
xmap <Leader>l <Plug>SendRightV
nmap <Leader>h <Plug>SendLeft
xmap <Leader>h <Plug>SendLeftV
nmap <Leader>k <Plug>SendUp
xmap <Leader>k <Plug>SendUpV
nmap <Leader>j <Plug>SendDown
xmap <Leader>j <Plug>SendDownV

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

" These also mess with YCM
" vnoremap <Tab>   >><Esc>gv
" vnoremap <S-Tab> <<<Esc>gv

" Fast tab creation
nnoremap <Leader>T <C-W>T
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>te :tabedit

" Fast split creation
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>v :vsp<CR>

" Fast equalize split
nnoremap <Leader>= <C-W>=

" Fast select all
nnoremap <Leader>a ggVG

" Stop highlighting search
nnoremap <Leader>n :noh<CR>

" Fast leave insert mode
inoremap jk <esc>
inoremap jj <esc>:w!<cr>

" Fast hunk jump
" Non-recursively remapping seems to break this...
nmap <Leader>] <Plug>(GitGutterNextHunk)
nmap <Leader>[ <Plug>(GitGutterPrevHunk)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Use easy motion with search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Save and load folds automatically
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Run black on file save for all python files
autocmd BufWritePre *.py execute ':Black'

" Source vimrc on filechange
autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
