let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)

    " Additional settings
    setlocal spell

    " Turn off numbers
    set nonumber

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    end

    " m-w and m-q exit
    map <M-w> <Esc>:qall<CR>
    map <M-W> <Esc>:qall!<CR>
    map <M-q> <Esc>:qall<CR>
    map <M-Q> <Esc>:qall!<CR>

    imap <M-w> <Esc>:qall<CR>
    imap <M-W> <Esc>:qall!<CR>
    imap <M-q> <Esc>:qall<CR>
    imap <M-Q> <Esc>:qall!<CR>

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)

endfunction
