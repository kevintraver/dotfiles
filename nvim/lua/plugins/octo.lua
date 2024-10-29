return {
  "pwntester/octo.nvim",
  lazy = true,
  keys = {
    {
      "<leader>gp",
      false,
    },
    {
      "<leader>gP",
      function()
        require("octo.commands").octo("pr", "list", "states=OPEN")
      end,
      desc = "Octo List Open Pull Requests",
    },
  },
}
