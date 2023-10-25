return {
  "f-person/git-blame.nvim",
  config = true,
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
