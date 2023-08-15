return {
  "gbprod/substitute.nvim",
  config = function()
    require("substitute").setup({
      on_substitute = require("yanky.integration").substitute(),
      exchange = { use_esc_to_cancel = false },
    })

    vim.keymap.set("n", "r", [[<cmd>lua require('substitute').operator()<cr>]], {})
    vim.keymap.set("x", "r", [[<cmd>lua require('substitute').visual()<cr>]], {})
    vim.keymap.set("n", "R", [["*<cmd>lua require('substitute').operator()<cr>]], {})
    vim.keymap.set("x", "R", [["*<cmd>lua require('substitute').visual()<cr>]], {})

    vim.keymap.set("n", "cx", "<cmd>lua require('substitute.exchange').operator()<cr>", {})
    vim.keymap.set("n", "cxx", "<cmd>lua require('substitute.exchange').line()<cr>", {})
    vim.keymap.set("x", "C", "<cmd>lua require('substitute.exchange').visual()<cr>", {})
    vim.keymap.set("n", "cxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", {})
  end,
}
