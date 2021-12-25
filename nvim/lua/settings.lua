vim.wo.number = true
vim.o.shortmess = "Io"
vim.o.wrap = false
vim.o.termguicolors = true

vim.opt.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.autoread = true
vim.o.swapfile = false

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.writebackup = false
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

vim.o.smartcase = true

vim.opt.termguicolors = true
vim.opt.syntax = 'on'

vim.api.nvim_command([[
  autocmd FileType help wincmd L
]])

vim.cmd 'au TextYankPost * silent! lua vim.highlight.on_yank { timeout = 1000 }'

vim.api.nvim_command([[
  augroup qs_colors
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
  augroup END
]])
