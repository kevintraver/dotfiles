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
  end,
  keys = {
    {
      "<C-a>",
      function()
        require("dial.map").inc_normal()
      end,
      desc = "Dial increment",
    },
    {
      "<C-x>",
      function()
        require("dial.map").dec_normal()
      end,
      desc = "Dial decrement",
    },
    {
      "g<C-a>",
      function()
        require("dial.map").inc_gnormal()
      end,
      desc = "Dial increment",
    },
    {
      "g<C-x>",
      function()
        require("dial.map").dec_gnormal()
      end,
      desc = "Dial decrement",
    },
    {
      "<C-a>",
      function()
        require("dial.map").inc_visual()
      end,
      desc = "Dial increment",
    },
    {
      "<C-x>",
      function()
        require("dial.map").dec_visual()
      end,
      desc = "Dial decrement",
    },
    {
      "g<C-a>",
      function()
        require("dial.map").inc_gvisual()
      end,
      desc = "Dial increment",
    },
    {
      "g<C-x>",
      function()
        require("dial.map").dec_gvisual()
      end,
      desc = "Dial decrement",
    },
  },
}
