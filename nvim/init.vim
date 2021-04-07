
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
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

" :Prettier to format a file
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Copy things to the clipboard
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR>

nnoremap <C-L> :nohl<CR><C-L>

map <leader>n :NERDTreeToggle<CR>

" Use ctrl+hjkl to move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Requires https://github.com/ggreer/the_silver_searcher
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Terminal configuration
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

set noshowmode
set noshowmode    
     
set ttimeoutlen=10    
    
" All global extensions that I use
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-rust-analyzer',
  \ 'coc-pairs',
  \ 'coc-snippets',
  \ 'coc-docker',
  \ 'coc-discord-rpc'
  \ ]

let g:airline_theme = 'gruvbox'    
     
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
