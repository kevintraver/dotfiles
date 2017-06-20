nnoremap <Space>gf :Gstatus<CR>
nnoremap <Space>gd :Gvdiff<CR>
nnoremap <Space>dv :Gvdiff<CR>
nnoremap <Space>gd :Gvdiff<CR>
nnoremap <Space>gD :Gvdiff HEAD^1<cr>
nnoremap <Space>ga :Gwrite<CR>
nnoremap <Space>gw :Gwrite<CR>
nnoremap <Space>gc :Gcommit<CR>
nnoremap <Space>gC :Gcommit --amend<CR>
nnoremap <Space>gr :Gread<CR>
nnoremap <Space>ge :Gedit<CR>
nnoremap <Space>gi :Gblame<CR>
nnoremap <Space>gp :Gpush<CR>
nnoremap <Space>gP :Gpush --force<CR>
nnoremap <Space>go :Gbrowse<CR>

augroup COMMIT_EDITMSG
  au!
  autocmd FileType gitcommit map <buffer> <silent> <Esc> :<C-U>bdelete<CR>
  autocmd FileType gitcommit setlocal nonumber norelativenumber
augroup END