-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "" -- Don't sync with system clipboard

vim.env["VISUAL"] = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
vim.env["EDITOR"] = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
vim.env["GIT_EDITOR"] = "nvr -cc split --remote-wait +'set bufhidden=wipe'"

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
