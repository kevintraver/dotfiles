-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "" -- Don't sync with system clipboard

vim.env["VISUAL"] = "nvr -s -l --remote-wait"
vim.env["EDITOR"] = "nvr -s -l --remote-wait"
vim.env["GIT_EDITOR"] = "nvr -s -l --remote-wait"

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"

vim.opt.swapfile = false
vim.opt.backup = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.mouse = ""

vim.opt.spell = false
