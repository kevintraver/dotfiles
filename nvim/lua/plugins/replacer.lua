return {
  "gabrielpoca/replacer.nvim",
  lazy = true,
  keys = {
    {
      "<leader>xr",
      function()
        require("replacer").run()
      end,
      desc = "Replacer",
    },
  },
}
