return {
  "monaqa/dial.nvim",
  lazy = true,
  config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group({
      default = {
        augend.integer.alias.decimal,
        augend.constant.alias.bool,
        augend.constant.new({
          elements = { "yes", "no" },
          word = true,
          cyclic = true,
        }),
      },
    })
  end,
  keys = {
    {
      "<C-a>",
      function()
        require("dial.map").manipulate("increment", "normal")
      end,
      desc = "Dial Increment",
    },
    {
      "<C-a>",
      function()
        require("dial.map").manipulate("increment", "normal")
      end,
      desc = "Dial Increment",
    },
    {
      "-",
      function()
        require("dial.map").manipulate("increment", "normal")
      end,
      desc = "Dial Increment",
    },
    {
      "<C-->",
      function()
        require("dial.map").manipulate("decrement", "normal")
      end,
      desc = "Dial Decrement",
    },
  },
}
