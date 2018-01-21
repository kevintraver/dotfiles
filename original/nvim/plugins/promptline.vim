let g:promptline_theme = 'lightline'
let g:promptline_powerline_symbols = 0
let g:promptline_preset = {
        \'a': [ promptline#slices#user() ],
        \'b' : [ promptline#slices#git_status(), promptline#slices#vcs_branch() ],
        \'c' : [ promptline#slices#cwd({ 'dir_limit': 2 }) ],
        \'warn' : [ promptline#slices#last_exit_code() ] }

augroup reload_promptline " {
    autocmd!
    autocmd BufWritePost ~/.dotfiles/nvim/plugins/promptline.vim source ~/.dotfiles/nvim/plugins/promptline.vim
    autocmd BufWritePost ~/.dotfiles/nvim/plugins/promptline.vim PromptlineSnapshot! ~/.promptline.sh
augroup END " }
