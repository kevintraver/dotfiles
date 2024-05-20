return {
  "gbprod/substitute.nvim",
  lazy = true,
  opts = function()
    return {
      on_substitute = require("yanky.integration").substitute(),
      exchange = {
        use_esc_to_cancel = false,
      },
    }
  end,
  keys = {
    {
      "r",
      mode = "n",
      function()
        require("substitute").operator()
      end,
      desc = "Replace",
    },
    {
      "r",
      mode = "x",
      function()
        require("substitute").visual()
      end,
      desc = "Replace",
    },
    {
      "R",
      mode = "n",
      function()
        require("substitute").operator({ register = "*" })
      end,
      desc = "Replace from System Clipboard",
    },
    {
      "R",
      mode = "x",
      function()
        require("substitute").visual({ register = "*" })
      end,
      desc = "Replace from System Clipboard",
    },
    {
      "cx",
      mode = "n",
      function()
        require("substitute.exchange").operator()
      end,
      desc = "Exchange",
    },
    {
      "cxx",
      mode = "n",
      function()
        require("substitute.exchange").line()
      end,
      desc = "Exchange (Line)",
    },
    {
      "cx",
      mode = "x",
      function()
        require("substitute.exchange").visual()
      end,
      desc = "Exchange",
    },
    {
      "cxc",
      mode = "n",
      function()
        require("substitute.exchange").cancel()
      end,
      desc = "Exchange (Cancel)",
    },
  },
}
