augroup fzf
  autocmd FileType fzf tnoremap <silent> <Esc> <Esc>
  autocmd FileType fzf set nonumber norelativenumber
augroup END

nnoremap <M-f> :Lines<CR>
nnoremap <M-g> :GFiles?<CR>
nnoremap <Space>gy :Commits<CR>
nnoremap <M-y> :History<CR>
nnoremap <M-b> :BTags<CR>
nnoremap <M-B> :Tags<CR>
nnoremap <M-e> :Rg<CR>

nnoremap <Leader><Space> :Buffers<CR>

" nnoremap <M-o> :Files<CR>
" nnoremap <M-f> :Lines<CR>
" nnoremap <M-F> :Rg<CR>


" nnoremap <M-e> :call SearchWordWithAg()<CR>
" vnoremap <M-e> :call SearchVisualSelectionWithAg()<CR>

" function! SearchVisualSelectionWithAg() range
"   let old_reg = getreg('"')
"   let old_regtype = getregtype('"')
"   let old_clipboard = &clipboard
"   set clipboard&
"   normal! ""gvy
"   let selection = getreg('"')
"   call setreg('"', old_reg, old_regtype)
"   let &clipboard = old_clipboard
"   execute 'Ag' selection
" endfunction

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
"   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \   <bang>0)

" function! SearchWordWithAg()
"   execute 'Rg' expand('<cword>')
" endfunction

" function! s:yank_list()
"   redir => ys
"   silent Yanks
"   redir END
"   return split(ys, '\n')[1:]
" endfunction

" function! s:yank_handler(reg)
"   if empty(a:reg)
"     echo "aborted register paste"
"   else
"     let token = split(a:reg, ' ')
"     execute 'Paste' . token[0]
"   endif
" endfunction

" command! FZFYank call fzf#run({
"       \ 'source': <sid>yank_list(),
"       \ 'sink': function('<sid>yank_handler'),
"       \ 'options': '-m',
"       \ 'down': 12
"       \ })

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)