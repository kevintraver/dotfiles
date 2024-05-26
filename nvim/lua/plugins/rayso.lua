return {
  "TobinPalmer/rayso.nvim",
  lazy = true,
  keys = {
    {
      "<leader>cp",
      mode = "v",
      function()
        ---@diagnostic disable-next-line: missing-parameter
        require("lib.create").create_snippet()
      end,
      desc = "Create Snippet",
    },
  },
}
