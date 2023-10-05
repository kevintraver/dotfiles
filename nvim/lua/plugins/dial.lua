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
  },
}
