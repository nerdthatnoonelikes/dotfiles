
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/nvim-bufferline.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'maxmellon/vim-jsx-pretty' " prettier jsx 
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
call plug#end()

filetype plugin indent on
filetype indent plugin on

syntax on

set termguicolors
set hidden
set nocompatible
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
" Stops neovim from changing the cursor in alacritty
set guicursor=

" Terminal configuration
" open new split panes to right and below
set splitright
set splitbelow
set noshowmode
set ttimeoutlen=10  
map Y y$

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Does what it says
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

" Set leader
let mapleader = " "
" Fzf config
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" All global extensions that I use
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-rust-analyzer',
  \ 'coc-pairs',
  \ 'coc-snippets',
  \ 'coc-docker',
  \ 'coc-discord-rpc',
  \ 'coc-pyright',
  \ 'coc-go'
  \ ]

" Light line configuration
let g:lightline = {
       \ 'colorscheme': 'one',
       \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2"  },
       \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3"  }
       \ }

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" Custom startify message :D
let g:startify_custom_header = startify#center([
\ 'welcome back nerd.',
\ ])


" Auto start the buffer line 
autocmd VimEnter * lua require "bufferline".setup{}

" :Prettier to format a file
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use tab for trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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

nmap <F2> :BufferLineCycleNext<CR>
nmap <F3> :BufferLineCyclePrev<CR>
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
nnoremap <c-n> :call OpenTerminal()<CR>  

colorscheme onedark 
