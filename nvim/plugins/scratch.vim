let g:scratch_persistence_file = '~/.scratch.vim'

let g:scratch_no_mappings = 1

nmap <M-m> :Scratch<CR>
xmap <M-m> <plug>(scratch-selection-reuse)

autocmd FileType scratch map <silent><buffer> <M-n> :hide<CR>
autocmd FileType scratch map <silent><buffer> q :hide<CR>
autocmd FileType scratch map <silent><buffer> <Esc> :hide<CR>
