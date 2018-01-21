let g:tmuxline_theme = 'lightline'
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
        \ 'a': '#S',
        \ 'win': '#I #W',
        \ 'cwin': '#I #W',
        \ 'y': '#(fuzzy_clock)',
        \ 'options': {
        \'status-justify': 'left'}
        \ }

augroup reload_tmuxline " {
    autocmd!
    autocmd BufWritePost ~/.dotfiles/nvim/plugins/tmuxline.vim source ~/.dotfiles/nvim/plugins/tmuxline.vim
    autocmd BufWritePost ~/.dotfiles/nvim/plugins/tmuxline.vim Tmuxline
    autocmd BufWritePost ~/.dotfiles/nvim/plugins/tmuxline.vim TmuxlineSnapshot! ~/.tmux/tmuxline.conf
augroup END " }
