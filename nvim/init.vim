
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'kien/ctrlp.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

filetype plugin indent on
set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set nomodeline
set noswapfile
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
map Y y$

let mapleader = " "

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR>

nnoremap <C-L> :nohl<CR><C-L>

map <leader>n :NERDTreeToggle<CR>

map <leader>q :q<CR>
map <leader>w :wq<CR>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set noshowmode
set noshowmode    
     
set ttimeoutlen=10    
    
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-rust-analyzer',
  \ 'coc-pairs',
  \ 'coc-snippets'
  \ ]


let g:airline_theme = 'base16'    
     
let g:airline_skip_empty_sections = 1    
     
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop = 0

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
set background=dark
colorscheme gruvbox
set termguicolors
