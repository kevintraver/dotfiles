return {
  "stevearc/overseer.nvim",
  lazy = true,
  opts = {
    strategy = {
      "toggleterm",
      direction = "vertical",
    },
  },
  keys = {
    {
      "<leader>or",
      function()
        require("overseer").run_template()
      end,
      desc = "Run Task",
    },
    {
      "<leader>ot",
      function()
        require("overseer").toggle()
      end,
      desc = "Toggle",
    },
  },
}
