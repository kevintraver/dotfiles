return {
  "gbprod/substitute.nvim",
  config = function()
    require("substitute").setup({
      exchange = { use_esc_to_cancel = false },
    })

    vim.keymap.set("n", "r", [[<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
    vim.keymap.set("x", "r", [[<cmd>lua require('substitute').visual()<cr>]], { noremap = true })
    vim.keymap.set("n", "R", [["*<cmd>lua require('substitute').operator()<cr>]], { noremap = true })
    vim.keymap.set("x", "R", [["*<cmd>lua require('substitute').visual()<cr>]], { noremap = true })

    vim.keymap.set("n", "cx", "<cmd>lua require('substitute.exchange').operator()<cr>", { noremap = true })
    vim.keymap.set("n", "cxx", "<cmd>lua require('substitute.exchange').line()<cr>", { noremap = true })
    vim.keymap.set("x", "C", "<cmd>lua require('substitute.exchange').visual()<cr>", { noremap = true })
    vim.keymap.set("n", "cxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", { noremap = true })
  end,
}
