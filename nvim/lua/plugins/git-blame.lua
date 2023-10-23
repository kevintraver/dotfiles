return {
  "f-person/git-blame.nvim",
  config = true,
  keys = {
    {

      "<leader>ghb",
      function()
        require("gitblame").toggle()
      end,
      desc = "Toggle Git Blame",
    },
  },
}
