return {
  "mcauley-penney/visual-whitespace.nvim",
  lazy = true,
  opts = {
    enabled = false,
  },
  keys = {
    {
      "<leader>uv",
      mode = { "n", "v" },
      function()
        require("visual-whitespace").toggle()
      end,
    },
  },
}
