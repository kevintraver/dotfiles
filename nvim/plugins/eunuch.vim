nnoremap ,x :Remove
nnoremap ,r :Rename<Space>
nnoremap ,m :Move<Space>
nnoremap ,d :Mkdir<Space>

command! CopyFileName let @+ = expand('%:t')
nnoremap ,y :CopyFileName<CR>

command! CopyFilePath let @+ = expand('%:p')
nnoremap ,Y :CopyFilePath<CR>
