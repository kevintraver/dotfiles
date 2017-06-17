"" Switching windows in terminal
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

augroup term " {
  autocmd TermOpen * | setlocal nonumber | setlocal path+=**
  autocmd BufWinEnter,BufEnter,WinEnter * if &buftype ==# "terminal" |
        \ startinsert | endif
  autocmd TermClose * call feedkeys('<cr>')
augroup END " }

" open new terminal buffer in horizontal split
nnoremap <M-\> :botright vsplit +TerminusOpen<cr>

tmap <M-\> <Plug>TerminusEditCommand
tmap <M-]> <C-\><C-n>
tmap <M-[> <C-\><C-n>
tmap <C-]> <C-\><C-n>

autocmd FileType editcommand map <silent><buffer> <M-\> <esc>:wq!<cr>
autocmd FileType editcommand imap <silent><buffer> <M-\> <esc>:wq!<cr>

autocmd FileType editcommand map <silent><buffer> <M-w> <esc>:wq!<cr>
autocmd FileType editcommand imap <silent><buffer> <M-w> <ESC><C-\><C-n>:wq!<cr>
autocmd FileType editcommand imap <silent><buffer> <Enter> <ESC><C-\><C-n>:wq!<cr>

autocmd FileType terminus stopinsert
autocmd FileType terminus inoremap <silent><buffer> <Enter> <esc>:bdelete<cr>
autocmd FileType terminus inoremap <silent><buffer> <M-\> <esc>:bdelete<cr>
autocmd FileType terminus nnoremap <silent><buffer> <M-\> <esc>:bdelete<cr>

let g:terminus_default_prompt = '❯'
let g:terminus_default_mappings = 0
let g:terminus_use_xterm_title = 0

tmap <M-w> <C-\><C-n>:Sayonara<CR>
tmap <M-W> <C-\><C-n>:Sayonara!<CR>
tmap <M-q> <C-\><C-n>:confirm qall<CR>
tmap <M-Q> <C-\><C-n>:qall!<CR>

if has('nvim')
  let $NVIM_TERMINAL = 1
endif
