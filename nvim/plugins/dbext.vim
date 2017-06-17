autocmd FileType sql nnoremap <buffer> \\ :DBExecSQLUnderCursor<CR>
autocmd FileType sql nnoremap <buffer> \dt :DBDescribeTable<CR>
let g:dbext_default_usermaps = 0
