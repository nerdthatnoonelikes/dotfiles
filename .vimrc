call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-markdown'
    Plug 'vim-scripts/indentpython.vim'
    Plug 'nvie/vim-flake8'
    Plug 'rrethy/vim-illuminate'
    Plug 'junegunn/goyo.vim'
    Plug 'morhetz/gruvbox'
    Plug 'airblade/vim-gitgutter'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
    Plug 'arcticicestudio/nord-vim'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" General settings
set encoding=utf8
filetype plugin indent on
syntax enable
set backspace=indent,eol,start
set hidden
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set showmode showcmd
set number relativenumber
set cursorline
set showmatch
set matchpairs+=<:>
set splitbelow splitright
set ignorecase smartcase incsearch
set nowrap
set scrolloff=1
set signcolumn=yes
set wildmenu
set wildmode=longest,full
set path+=**
set lazyredraw
set noeb vb t_vb=
set tm=500
set showbreak=\\ "
set lcs+=trail:-,extends:>,precedes:<,nbsp:~,eol:\ ,tab:\ \ 
set nobackup
set nowritebackup
set noswapfile
set updatetime=100
set undofile
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable automatic comment when moving to a new line
let g:tex_flavor = 'latex'
let g:Illuminate_delay = 100
let g:gitgutter_sign_removed = '-'

" colors
set t_Co=256
set background=dark
colorscheme nord
