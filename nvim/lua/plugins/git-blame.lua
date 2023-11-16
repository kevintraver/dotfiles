return {
  "f-person/git-blame.nvim",
  config = true,
  lazy = true,
  keys = {
    {
      "<leader>ghB",
      function()
        require("gitblame").toggle()
      end,
      desc = "Toggle Git Blame",
    },
  },
}
