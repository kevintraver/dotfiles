-- https://github.com/monaqa/dial.nvim

return {
  "monaqa/dial.nvim",
  event = "VeryLazy",
  config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group({
      default = {
        augend.integer.alias.decimal,
        augend.constant.alias.bool,
      },
    })
    vim.keymap.set("n", "<C-a>", require("dial.map").inc_normal(), {})
    vim.keymap.set("n", "<C-x>", require("dial.map").dec_normal(), {})
    vim.keymap.set("n", "g<C-a>", require("dial.map").inc_gnormal(), {})
    vim.keymap.set("n", "g<C-x>", require("dial.map").dec_gnormal(), {})
    vim.keymap.set("v", "<C-a>", require("dial.map").inc_visual(), {})
    vim.keymap.set("v", "<C-x>", require("dial.map").dec_visual(), {})
    vim.keymap.set("v", "g<C-a>", require("dial.map").inc_gvisual(), {})
    vim.keymap.set("v", "g<C-x>", require("dial.map").dec_gvisual(), {})
  end,
}
