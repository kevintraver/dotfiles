return {
  "gabrielpoca/replacer.nvim",
  keys = {
    {
      "<leader>rq",
      function()
        require("replacer").run()
      end,
      desc = "Replacer",
    },
  },
}
