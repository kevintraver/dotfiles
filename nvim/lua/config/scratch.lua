vim.g.scratch_no_mappings = 1
vim.g.scratch_insert_autohide = 0
vim.g.scratch_persistence_file = '~/.cache/nvim/scratch.txt'
vim.g.scratch_start_in_insert_mode = 0

vim.api.nvim_command([[
  nmap <Leader>l <plug>(scratch-insert-reuse)
  xmap <Leader>l <plug>(scratch-selection-reuse)
]])
