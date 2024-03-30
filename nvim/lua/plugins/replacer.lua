return {
  "gabrielpoca/replacer.nvim",
  lazy = true,
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
