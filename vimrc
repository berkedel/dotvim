filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

"gets rid of all the crap that Vim does to be vi compatible
set nocompatible

"prevents some security exploits having to do with modelines in files
set modelines=0

"set tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"set the character encoding
set encoding=utf-8
"set minimal number of screen lines to keep above and below the cursor
set scrolloff=3
"copy indent from current line when starting a new line
set autoindent
set showmode
"show (partial) command in the last line of the screen
set showcmd
"hides buffers instead of closing them
set hidden
"when 'wildmenu' is on, command-line completion operates in an enhanced mode
set wildmenu
"completion mode that is used for the character specified with 'wildchar'
set wildmode=list:longest
"use visual bell instead of beeping
set visualbell
"highlight the screen line of the cursor with CursorLine
set cursorline
"indicates a fast terminal connection
set ttyfast
"show the line and column number of the cursor position, separated by a comma
set ruler
set backspace=indent,eol,start
"always display last status
set laststatus=2
set relativenumber
set undofile

"change <leader> key
let mapleader = ","

"set searching/moving behaviour
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"make Vim handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"something other TextMate refugees may like
set list
set listchars=tab:▸\ ,eol:¬

"disbale arrow key
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"make ; do the same thing as :
nnoremap ; :

"save on losing focus
au FocusLost * :wa

"strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"for Ack
nnoremap <leader>a :Ack

"fold tag function in HTML
nnoremap <leader>ft Vatzf

"sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

"imitate TextMate Ctrl+Q function, re-hardwrap paragraphs of text
nnoremap <leader>q gqip

"reselect the text that was jus pasted
nnoremap <leader>v V`]

"let open ~/.vimrc quickly in a vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"use jj to exit back to normal mode
inoremap jj <ESC>

"open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l

"remapping commands needed to move around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"no backup nor swap file
set nobackup
set noswapfile