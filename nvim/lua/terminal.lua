local map = vim.api.nvim_set_keymap

map('t', '<c-h>', [[<c-\><c-n><cmd>lua require("tmux").move_left()<cr>]], { silent = true })
map('t', '<c-j>', [[<c-\><c-n><cmd>lua require("tmux").move_bottom()<cr>]], { silent = true })
map('t', '<c-k>', [[<c-\><c-n><cmd>lua require("tmux").move_top()<cr>]], { silent = true })
map('t', '<c-l>', [[<c-\><c-n><cmd>lua require("tmux").move_right()<cr>]], { silent = true })

map('t', '<Esc>', [[<c-\><c-n>]], { silent = true })

vim.cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * :SendHere
    autocmd TermClose * call feedkeys("i")
]]

vim.g.send_disable_mapping = true
vim.g.neoterm_autoscroll = 1
vim.g.neoterm_autoinsert = 0

-- map('n', '<M-\\>', [[<Plug>SendLine]], { silent = true })
-- map('v', '<M-\\>', [[<Plug>Send]], { silent = true })
--
-- map('t', '<M-\\>', [[<Plug>TerminusEditCommand]], { silent = true })
-- map('t', '<cr>', [[<Plug>TerminusInterceptCommand]], { silent = true })
--
-- map('n', '<M-d>', [[<cmd>botright vnew<CR><cmd>TerminusOpen<CR>]], { silent = true })
-- map('n', '<M-D>', [[<cmd>TerminusOpen<CR>]], { silent = true })

vim.cmd [[
  autocmd FileType editcommand,gitcommit,gitrebase,gitconfig,gitsendmail set bufhidden=delete
  autocmd FileType editcommand set ft=zsh
  autocmd FileType editcommand setlocal wrap

  autocmd FileType editcommand nnoremap <silent><buffer> <M-e> <esc>:wq!<cr>
  autocmd FileType editcommand inoremap <silent><buffer> <M-e> <esc>:wq!<cr>
  autocmd FileType editcommand nnoremap <silent><buffer> <M-C-e> <esc>:wq!<cr>
  autocmd FileType editcommand inoremap <silent><buffer> <M-C-e> <esc>:wq!<cr>

  autocmd FileType terminus nnoremap <silent><buffer> <M-e> <esc>:bd!<cr>
  autocmd FileType terminus inoremap <silent><buffer> <M-e> <esc>:bd!<cr>

  autocmd FileType editrubycommand nnoremap <silent><buffer> <M-e> <esc>:wq!<cr>
  autocmd FileType editrubycommand inoremap <silent><buffer> <M-e> <esc>:wq!<cr>
  autocmd FileType editrubycommand nnoremap <silent><buffer> <M-C-e> <esc>:wq!<cr>
  autocmd FileType editrubycommand inoremap <silent><buffer> <M-C-e> <esc>:wq!<cr>
  autocmd FileType editrubycommand set ft=ruby
  autocmd FileType editrubycommand setlocal wrap
]]


vim.g.terminus_default_prompt = '>'
vim.g.terminus_default_mappings = 0
