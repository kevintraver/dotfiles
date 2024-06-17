return {
  "gabrielpoca/replacer.nvim",
  enabled = false,
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
