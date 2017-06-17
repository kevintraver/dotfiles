"*****************************************************************************
"" Basic Setup
"*****************************************************************************"

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set noeol
set bomb
set binary
set ttyfast
set fileformats=unix,dos,mac

" fix esc timeout
set ttimeout
set ttimeoutlen=0

set noshowcmd

"" set shell
set shell=zsh

"" Disable mouse
set mouse=

"" Fix backspace indent
set backspace=indent,eol,start

"" use smartcase
set smartcase

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase

"" Menu
set shortmess=a
set cmdheight=2
set wildmenu

"" Directories for swp files
set nobackup
set noswapfile

"" Use undofile
set undofile
set undodir=$HOME/.config/nvim/undo

" Disable visualbell
set noerrorbells visualbell t_vb=

"" Copy/Paste/Cut
set clipboard=unnamed,unnamedplus

"*****************************************************************************
"" Visual Settings
"*****************************************************************************

colorscheme NeoSolarized
set background=dark
set termguicolors

syntax on
set ruler
set number
set nowrap
set nofoldenable
set diffopt+=vertical
set colorcolumn=80
set scrolloff=3

set list
set listchars=tab:▸\ ,trail:·,nbsp:_

let no_buffers_menu=1

set guioptions=egmrti

"" Disable the blinking cursor.
set gcr=a:blinkon0

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.

autocmd FileType help wincmd H

"*****************************************************************************
"" Mappings
"*****************************************************************************

" noremap ; <Nop>
nnoremap ; :
vnoremap ; :

let mapleader = "\<Space>"

nmap <silent> <M-d> <Plug>GoldenViewSplit

nnoremap <Leader>ep :e ~/.dotfiles/nvim/plugins.vim<CR>
nnoremap <Leader>ev :e ~/.dotfiles/nvim/bootstrap.vim<CR>
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

if has('nvim')
  let $NVIM_TERMINAL = 1
endif

noremap <silent> <Space>st :!stree<CR>