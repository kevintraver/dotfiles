return {
  "booperlv/nvim-gomove",
  event = "VeryLazy",
  keys = {
    {
      "<A-h>",
      function()
        require("gomove.mappings.base").MoveLineHorizontal(-vim.v.count1)
      end,
      desc = "Move line left",
    },
    {
      "<A-l>",
      function()
        require("gomove.mappings.base").MoveLineHorizontal(vim.v.count1)
      end,
      desc = "Move line right",
    },
  },
}
