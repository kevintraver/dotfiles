let g:neoterm_shell = "zsh"
let g:neoterm_position = 'vertical'
let g:neoterm_autoscroll = 1
let g:neoterm_repl_ruby = 'pry'

let g:neoterm_keep_term_open = 1

nnoremap <silent> \<Enter> :TREPLSendFile<cr>
nnoremap <silent> \\ :TREPLSendLine<cr>
vnoremap <silent> \\ :TREPLSendLine<cr>

nnoremap <silent> \t :Tnew<cr>

nnoremap <silent> \a :call neoterm#test#run('all')<cr>
nnoremap <silent> \f :call neoterm#test#run('file')<cr>
nnoremap <silent> \r :call neoterm#test#run('current')<cr>
" nnoremap <silent> \r :call neoterm#test#rerun()<cr>

nnoremap <silent> \q :call neoterm#close()<cr>
nnoremap <silent> \k :call neoterm#clear()<cr>
" nnoremap <silent> \q :call neoterm#kill()<cr>
" nnoremap <silent> <C-c> :call neoterm#kill()<cr>

