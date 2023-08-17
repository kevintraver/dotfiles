-- https://github.com/gbprod/substitute.nvim

return {
  "gbprod/substitute.nvim",
  event = "VeryLazy",
  config = function()
    require("substitute").setup({
      on_substitute = require("yanky.integration").substitute(),
      exchange = { use_esc_to_cancel = false },
    })

    vim.keymap.set("n", "r", [[<cmd>lua require('substitute').operator()<cr>]], {})
    vim.keymap.set("x", "r", [[<cmd>lua require('substitute').visual()<cr>]], {})
    vim.keymap.set("n", "R", [["*<cmd>lua require('substitute').operator()<cr>]], {})
    vim.keymap.set("x", "R", [["*<cmd>lua require('substitute').visual()<cr>]], {})

    vim.keymap.set("n", "gx", "<cmd>lua require('substitute.exchange').operator()<cr>", {})
    vim.keymap.set("n", "gxx", "<cmd>lua require('substitute.exchange').line()<cr>", {})
    vim.keymap.set("x", "G", "<cmd>lua require('substitute.exchange').visual()<cr>", {})
    vim.keymap.set("n", "gxc", "<cmd>lua require('substitute.exchange').cancel()<cr>", {})
  end,
}
