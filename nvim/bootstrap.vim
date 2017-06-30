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
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" always show tabline
set showtabline=2

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

au CmdwinEnter : startinsert

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

augroup help
  autocmd FileType help wincmd H
augroup END