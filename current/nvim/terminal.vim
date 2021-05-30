function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
nnoremap <c-n> :call OpenTerminal()<CR>

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
