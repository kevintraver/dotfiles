vim.api.nvim_set_keymap('n', '<Leader>gg', '<cmd>Neogit<CR>', { silent = true })

vim.cmd("autocmd FileType NeogitCommitMessage nnoremap <buffer> <M-s> :wq<CR>")

local neogit = require("neogit")

neogit.setup {
  disable_insert_on_commit = false,
  disable_commit_confirmation = true,
  integrations = {
    diffview = true
  }
}
