local map = vim.api.nvim_set_keymap

map('t', '<c-h>', [[<c-\><c-n><cmd>lua require("tmux").move_left()<cr>]], { silent = true })
map('t', '<c-j>', [[<c-\><c-n><cmd>lua require("tmux").move_bottom()<cr>]], { silent = true })
map('t', '<c-k>', [[<c-\><c-n><cmd>lua require("tmux").move_top()<cr>]], { silent = true })
map('t', '<c-l>', [[<c-\><c-n><cmd>lua require("tmux").move_right()<cr>]], { silent = true })

map('t', '<Esc>', [[<c-\><c-n>]], { silent = true })

vim.cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * :SendHere
]]

vim.g.send_disable_mapping = true
vim.g.neoterm_autoscroll = 1
vim.g.neoterm_autoinsert = 0

map('n', '<C-Space>', [[<Plug>SendLine]], { silent = true })
map('v', '<C-Space>', [[<Plug>Send]], { silent = true })

map('n', '<M-d>', [[<cmd>botright vsplit<CR><cmd>terminal<CR>]], { silent = true })
map('n', '<M-D>', [[<cmd>terminal<CR>]], { silent = true })

vim.cmd [[
  autocmd FileType editcommand nnoremap <silent><buffer> <C-Space> <esc>:wq!<cr>
]]
