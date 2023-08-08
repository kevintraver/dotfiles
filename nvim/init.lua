require("plugins")

require("leap").add_default_mappings()
require("leap-config")

require("flit").setup()

require("stay-in-place").setup()

require("hardtime").setup({
  restricted_keys = {
    ["h"] = { "n", "x" },
    ["j"] = { "n" },
    ["k"] = { "n" },
    ["l"] = { "n", "x" },
    ["x"] = { "n" },
  },
})

require("spider").setup()

require("textcase").setup()

require("leap-spooky").setup()

require("various-textobjs").setup({ useDefaultKeymaps = true })

require("treesj").setup()

require("sibling-swap").setup()

require("sort").setup()

-- cutless settings
require("cutlass").setup({
  cut_key = "m",
  exclude = { "ns", "nS" },
})

-- comment setup
require("Comment").setup()

-- gomove setup
require("gomove").setup({ map_defaults = true })

vim.keymap.set({ "n", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set(
  { "o" },
  "w",
  "<cmd>lua require('spider').motion('w', { skipInsignificantPunctuation = false } )<CR>",
  { desc = "Spider-w" }
)

vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
vim.keymap.set({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

-- substitute setup and keymaps
require("substitute").setup({
  exchange = {    use_esc_to_cancel = false,
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

require("nvim-surround").setup({
  keymaps = {
    normal = "'",
    visual = "'",
    visual_line = "g'",
    delete = "d'",
    change = "c'",
  },
  move_cursor = false,
})

-- Keymappings for vim-system-copy
vim.keymap.set("n", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("v", "Y", "<Plug>SystemCopy", {})
vim.keymap.set("n", "YY", "<Plug>SystemCopyLine", {})

-- Keymappings and setup for nvim-treesitter-textsubjects
require("nvim-treesitter.configs").setup({
  textsubjects = {
    enable = true,
    prev_selection = ",", -- (Optional) keymap to select the previous selection
    keymaps = {
      ["."] = "textsubjects-smart",
      [";"] = "textsubjects-container-outer",
      ["i;"] = "textsubjects-container-inner",
    },
  },
})
