-- https://github.com/kelly-lin/ranger.nvim

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
      "<D-r>",
      function()
        require("ranger-nvim").open(true)
      end,
    },
  },
}