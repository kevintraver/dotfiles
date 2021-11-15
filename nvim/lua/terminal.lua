local map = vim.api.nvim_set_keymap

map('t', '<c-h>', [[<c-\><c-n><cmd>lua require("tmux").move_left()<cr>]], { silent = true })
map('t', '<c-j>', [[<c-\><c-n><cmd>lua require("tmux").move_bottom()<cr>]], { silent = true })
map('t', '<c-k>', [[<c-\><c-n><cmd>lua require("tmux").move_top()<cr>]], { silent = true })
map('t', '<c-l>', [[<c-\><c-n><cmd>lua require("tmux").move_right()<cr>]], { silent = true })

map('t', '<Esc>', [[<c-\><c-n>]], { silent = true })

vim.cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * :SendHere
    autocmd TermOpen term://* startinsert
    autocmd BufWinEnter,BufEnter,BufNew,BufLeave term://* stopinsert
]]

vim.g.send_disable_mapping = true
vim.g.neoterm_autoscroll = 1
vim.g.neoterm_autoinsert = 0
vim.g.neomux_no_term_autoinsert = 1

map('n', '<M-Enter>', [[<Plug>SendLine]], { silent = true })
map('v', '<M-Enter>', [[<Plug>Send]], { silent = true })

map('n', '<M-d>', [[<cmd>vsplit<CR><cmd>call NeomuxTerm()<CR>]], { silent = true })
