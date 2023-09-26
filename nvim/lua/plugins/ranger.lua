-- https://github.com/kelly-lin/ranger.nvim

return {
  "kelly-lin/ranger.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<D-r>",
      function()
        require("ranger-nvim").open(true)
      end,
    },
  },
}
