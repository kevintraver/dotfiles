local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', '<Leader>gg', '<cmd>lua require("neogit").open()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gc', '<cmd>lua require("neogit").open({ "commit" })<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-g>', '<cmd>lua require("neogit").open()<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-G>', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], opts)

vim.cmd("autocmd FileType NeogitCommitMessage nnoremap <buffer> <M-s> :wq<CR>")
vim.cmd("autocmd FileType NeogitCommitMessage inoremap <buffer> <M-s> <C-\\><C-n>:wq<CR>")

local neogit = require("neogit")

neogit.setup {
  disable_insert_on_commit = false,
  disable_commit_confirmation = true,
  integrations = {
    diffview = true
  },
  mappings = {
    status = {
      ["P"] = "PullPopup",
      ["p"] = "PushPopup",
      ["<M-s>"] = "CommitPopup"
    }
  }
}
