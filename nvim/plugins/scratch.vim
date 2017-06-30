let g:scratch_persistence_file = expand( '$HOME/.scratch.vim' )

let g:scratch_no_mappings = 1

nmap <M-'> :Scratch<CR>
xmap <M-'> <plug>(scratch-selection-reuse)

augroup scratch
  autocmd FileType scratch map <silent><buffer> <M-'> :hide<CR>
  autocmd FileType scratch map <silent><buffer> <M-w> :hide<CR>
  autocmd FileType scratch map <silent><buffer> q :hide<CR>
  autocmd FileType scratch map <silent><buffer> <Esc> :hide<CR>
augroup END
