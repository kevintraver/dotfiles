vim.api.nvim_set_keymap('n', '<Leader>gg', '<cmd>Neogit<CR>', { silent = true })

local neogit = require("neogit")

neogit.setup {
  disable_insert_on_commit = false,
  integrations = {
    diffview = true
  }
}
