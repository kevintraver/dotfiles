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
        require("dial.map").manipulate("increment", "normal")
      end,
      desc = "Dial increment",
    },
    {
      "<C-x>",
      function()
        require("dial.map").manipulate("decrement", "normal")
      end,
      desc = "Dial decrement",
    },
    {
      "g<C-a>",
      function()
        require("dial.map").manipulate("increment", "gnormal")
      end,
      desc = "Dial increment",
    },
    {
      "g<C-x>",
      function()
        require("dial.map").manipulate("decrement", "gnormal")
      end,
      desc = "Dial decrement",
    },
    {
      "<C-a>",
      mode = "v",
      function()
        require("dial.map").manipulate("increment", "visual")
      end,
      desc = "Dial increment",
    },
    {
      "<C-x>",
      mode = "v",
      function()
        require("dial.map").manipulate("decrement", "visual")
      end,
      desc = "Dial decrement",
    },
    {
      "g<C-a>",
      mode = "v",
      function()
        require("dial.map").manipulate("increment", "gvisual")
      end,
      desc = "Dial increment",
    },
    {
      "g<C-x>",
      mode = "v",
      function()
        require("dial.map").manipulate("decrement", "gvisual")
      end,
      desc = "Dial decrement",
    },
  },
}
