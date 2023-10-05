return {
  "kelly-lin/ranger.nvim",
  event = "VeryLazy",
  opts = {
    ui = {
      border = "single",
      height = 0.9,
      width = 0.9,
    },
  },
  keys = {
    {
      "<D-S-e>",
      function()
        require("ranger-nvim").open(true)
      end,
    },
  },
}
