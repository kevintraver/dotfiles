"*****************************************************************************
"" Key Mappings
"*****************************************************************************

" noremap ; <Nop>
nnoremap ; :
vnoremap ; :

let mapleader = "\<Space>"

nmap <silent> <M-d> <Plug>GoldenViewSplit

nnoremap <Leader>ep :e ~/.dotfiles/nvim/plugins.vim<CR>
nnoremap <Leader>ev :e ~/.dotfiles/nvim/bootstrap.vim<CR>
nnoremap <Leader>ek :e ~/.dotfiles/nvim/keymaps.vim<CR>
nnoremap <Leader>eb :e ~/.dotfiles/nvim/bootstrap.vim<CR>
nnoremap <Leader>ez :e ~/.dotfiles/zsh/zshrc<CR>
nnoremap <Leader>ea :e ~/.dotfiles/zsh/aliases.zsh<CR>
nnoremap <Leader>et :e ~/.dotfiles/tmux.conf<CR>
nnoremap <Leader>en :e ~/.dotfiles/nvim/terminal.vim<CR>
nnoremap <Leader>eP :e ~/.config/nvim/plugged<CR>
nnoremap <Leader>el :e ~/.zshrc.local<CR>

"" reload current file
nnoremap <Leader>er :source %<CR>

"" Map to closest Mac common keyboard shortcut equivalent

"" Undo/Redo
nnoremap <M-z> u
nnoremap <M-Z> <C-r>

"" Quit
nnoremap <M-w> <Esc>:Sayonara<CR>
nnoremap <M-W> <Esc>:Sayonara!<CR>
nnoremap <M-q> <Esc>:confirm qall<CR>
nnoremap <M-Q> <Esc>:qall!<CR>

imap <M-w> <Esc>:Sayonara<CR>
imap <M-W> <Esc>:Sayonara!<CR>
imap <M-q> <Esc>:confirm qall<CR>
imap <M-Q> <Esc>:qall!<CR>

"" Save
nnoremap <M-s> <Esc>:write<CR>
nnoremap <M-S> <Esc>:write!<CR>

" New
nnoremap <M-n> <Esc>:enew<CR>

"" Quick navigate to alternate file
nnoremap <Space>a :A<CR>

nnoremap <M-h> :Dirvish %:p<CR>

" ignore q
noremap q <Nop>

"" arrow keys switch buffers
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" easy tab switching
let g:lasttab = tabpagenr()
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <M-Space> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <M-Space> :exe "tabn ".g:lasttab<cr>
tmap <silent> <M-Space> <C-\><C-n> <esc> :exe "tabn ".g:lasttab<cr>

noremap <Space>1 1gt
noremap <Space>2 2gt
noremap <Space>3 3gt
noremap <Space>4 4gt
noremap <Space>5 5gt
noremap <Space>6 6gt
noremap <Space>7 7gt
noremap <Space>8 8gt
noremap <Space>9 9gt

" easier mark jump
noremap <Space>j `

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

autocmd FileType qf noremap <buffer> <ESC> :BD<cr>

noremap <silent> <Space>st :!stree<CR>
