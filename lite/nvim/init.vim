call plug#begin('~/.local/share/nvim/plugged')

Plug 'justinmk/vim-sneak'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-unimpaired'
Plug 'myusuf3/numbers.vim'

Plug 'mbbill/undotree'
Plug 'justinmk/vim-dirvish'
Plug 'airblade/vim-rooter'

call plug#end()

let g:sneak#streak = 1
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1
