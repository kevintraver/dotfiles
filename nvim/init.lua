require("plugins")

-- Keep selection when indenting
vim.keymap.set("v", "<", "<gv", {})
vim.keymap.set("v", ">", ">gv", {})

-- cutless settings
require("cutlass").setup({
  cut_key = "m",
  exclude = { "ns", "nS" }
})

-- substitute setup and keymaps
require("substitute").setup()

vim.keymap.set("n", "r", [[<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
vim.keymap.set("n", "rl", [[<cmd>lua require('substitute').line()<cr>]], { noremap = true })
vim.keymap.set("x", "r", [[<cmd>lua require('substitute').visual()<cr>]], { noremap = true })
vim.keymap.set("n", "R", [["*<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
vim.keymap.set("n", "Rl", [["*<cmd>lua require('substitute').line()<cr>]], { noremap = true })
vim.keymap.set("n", "RL", [["*<cmd>lua require('substitute').line()<cr>]], { noremap = true })
vim.keymap.set("x", "R", [["*<cmd>lua require('substitute').visual()<cr>]], { noremap = true })

vim.keymap.set("n", "cx", "<cmd>lua require('substitute.exchange').operator()<cr>", { noremap = true })
vim.keymap.set("n", "cxl", "<cmd>lua require('substitute.exchange').line()<cr>", { noremap = true })
vim.keymap.set("x", "C", "<cmd>lua require('substitute.exchange').visual()<cr>", { noremap = true })
vim.keymap.set("n", "cxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", { noremap = true })

-- yanky setup and keymaps
require("yanky").setup()

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

-- surround setup and keymaps
require("surround").setup({
  mappings_style = "sandwich",
  prefix = "'"
})

-- Keymappings for vim-system-copy
vim.keymap.set("n", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("v", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("n", "YY", "<Plug>SystemCopyLine", {})

-- Keymappings for vim-textobj-pastedtext
vim.g.pastedtext_select_key = 'lp'