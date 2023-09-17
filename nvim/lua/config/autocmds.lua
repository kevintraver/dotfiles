-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Use regular (not filtered) put in terminals
vim.api.nvim_create_autocmd("TermEnter", {
  callback = function(event)
    vim.keymap.set("n", "p", "<Plug>(YankyPutAfter)", { buffer = event.buf, silent = true })
    vim.keymap.set("n", "P", "<Plug>(YankyPutBefore)", { buffer = event.buf, silent = true })
  end,
})
