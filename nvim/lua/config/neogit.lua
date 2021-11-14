local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', '<Leader>gg', '<cmd>lua require("neogit").open()<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-g>', '<cmd>lua require("neogit").open()<CR>', opts)

vim.cmd("autocmd FileType NeogitCommitMessage nnoremap <buffer> <M-s> :wq<CR>")

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
    }
  }
}
