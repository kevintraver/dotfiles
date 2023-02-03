require("plugins")

require('leap').add_default_mappings()

require('flit').setup()

require('textcase').setup()

require('leap-spooky').setup()

-- cutless settings
require("cutlass").setup({
  cut_key = "x",
  exclude = { "ns", "nS" }
})

-- vscode neovim git keymaps
vim.keymap.set("n", "]]", [[<Cmd>call VSCodeNotify('workbench.action.editor.nextChange')<CR>]], { noremap = true })
vim.keymap.set("n", "[[", [[<Cmd>call VSCodeNotify('workbench.action.editor.previousChange')<CR>]], { noremap = true })

-- comment setup
require('Comment').setup()

-- gomove setup
require("gomove").setup { map_defaults = true }

-- marks setup
require'marks'.setup()

-- substitute setup and keymaps
require("substitute").setup({
  exchange = {
    use_esc_to_cancel = false,
  },
})

vim.keymap.set("n", "r", [[<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
vim.keymap.set("x", "r", [[<cmd>lua require('substitute').visual()<cr>]], { noremap = true })
vim.keymap.set("n", "R", [["*<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
vim.keymap.set("x", "R", [["*<cmd>lua require('substitute').visual()<cr>]], { noremap = true })

vim.keymap.set("n", "cx", "<cmd>lua require('substitute.exchange').operator()<cr>", { noremap = true })
vim.keymap.set("n", "cxx", "<cmd>lua require('substitute.exchange').line()<cr>", { noremap = true })
vim.keymap.set("x", "C", "<cmd>lua require('substitute.exchange').visual()<cr>", { noremap = true })
vim.keymap.set("n", "cxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", { noremap = true })

-- yanky setup and keymaps
require("yanky").setup()

vim.keymap.set("n", "y", "<Plug>(YankyYank)", {})
vim.keymap.set("x", "y", "<Plug>(YankyYank)", {})

vim.keymap.set("n", "p", "<Plug>(YankyPutAfter)", {})
vim.keymap.set("n", "P", "<Plug>(YankyPutBefore)", {})
vim.keymap.set("x", "p", "<Plug>(YankyPutAfter)", {})
vim.keymap.set("x", "P", "<Plug>(YankyPutBefore)", {})
vim.keymap.set("n", "gp", "<Plug>(YankyGPutAfter)", {})
vim.keymap.set("n", "gP", "<Plug>(YankyGPutBefore)", {})
vim.keymap.set("x", "gp", "<Plug>(YankyGPutAfter)", {})
vim.keymap.set("x", "gP", "<Plug>(YankyGPutBefore)", {})
vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)", {})
vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleBackward)", {})

require("nvim-surround").setup()

-- word motion config
vim.g.wordmotion_uppercase_spaces = { ',', '(', ')', '{', '}', '[', ']', '=', "'", '"', '\\', '/' }

-- Keymappings for vim-system-copy
vim.keymap.set("n", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("v", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("n", "YY", "<Plug>SystemCopyLine", {})

-- Keymappings for vim-textobj-pastedtext
vim.g.pastedtext_select_key = 'lp'

-- Keymappings and setup for nvim-treesitter-textsubjects
require("nvim-treesitter.configs").setup {
  textsubjects = {
      enable = true,
      prev_selection = ',', -- (Optional) keymap to select the previous selection
      keymaps = {
          ['.'] = 'textsubjects-smart',
          [';'] = 'textsubjects-container-outer',
          ['i;'] = 'textsubjects-container-inner',
      },
  }
}