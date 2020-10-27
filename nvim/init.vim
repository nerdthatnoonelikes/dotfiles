" theme settings
let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set background=dark
set t_Co=254

syntax on
colorscheme tropical

set ruler
set laststatus=2
set noshowmode
set linebreak
set hidden
set cursorline

" compatibility
set nocompatible
filetype on

call plug#begin('~/.config/nvim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
call plug#end()

function! RedrawMode(mode)
	if a:mode == 'n'
		return 'normal mode'
	elseif a:mode == 'i'
		return 'insert mode'
	elseif a:mode == 'R'
		return 'replace mode'
	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
		return 'visual mode'
	elseif a:mode == 'c'
		return 'command mode'
	elseif a:mode == 't'
		return 'trace mode'
	endif
	return ''
endfunction

function! SetModifiedSymbol(modified)
	if a:modified == 1
	return '// unsaved'
	else
	return ''
	endif
endfunction

function! SetFiletype(filetype)
	if a:filetype == ''
		return 'txt'
	else
		return a:filetype
	endif
endfunction



set statusline=%#Slrese#\ %{RedrawMode(mode())}\ %#Sl1#
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
set statusline+=%#SlRese#
set statusline+=%=
set statusline+=%#Sl2#\ %.20t\ //
set statusline+=\%#Sl2#\ %l,%c

set shiftwidth=4
