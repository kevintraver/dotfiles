-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "" -- Don't sync with system clipboard

vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

vim.opt.swapfile = false
vim.opt.backup = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.mouse = ""

vim.opt.cursorlineopt = "number"

-- No remote plugins are used, so skip loading the language providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
