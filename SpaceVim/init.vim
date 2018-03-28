"=============================================================================
" dark_powered.vim --- Dark powered mode of SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


let g:spacevim_disabled_plugins=[
    \ ['vim-easymotion'],
    \ ['vim-easyoperator-line'],
    \ ['clever-f.vim'],
    \ ]

let g:spacevim_custom_plugins = [
    \ ['justinmk/vim-sneak'],
    \ ['Shougo/neomru.vim'],
    \ ]

" SpaceVim Options: {{{

set ignorecase

let g:sneak#streak = 1
let g:sneak#label = 1

let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1

map f <Plug>Sneak_s
map F <Plug>Sneak_S

let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1

" fix esc timeout
set ttimeout
set ttimeoutlen=0

" }}}

" SpaceVim Layers: {{{

call SpaceVim#layers#load('git')
call SpaceVim#layers#load('fzf')
call SpaceVim#layers#load('ruby')

" }}}


