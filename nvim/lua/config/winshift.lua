require("winshift").setup {}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<M-;>', [[<cmd>WinShift swap<cr>]], opts)
