nnoremap <Leader>fx :Remove
nnoremap <Leader>fr :Rename<Space>
nnoremap <Leader>fm :Move<Space>
nnoremap <Leader>fd :Mkdir<Space>

command! CopyFileName let @+ = expand('%:t')
nnoremap <Leader>fy :CopyFileName<CR>

command! CopyFilePath let @+ = expand('%:p')
nnoremap <Leader>fY :CopyFilePath<CR>
