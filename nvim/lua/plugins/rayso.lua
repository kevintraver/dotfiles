-- https://github.com/TobinPalmer/rayso.nvim

return {
  "TobinPalmer/rayso.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>cs",
      mode = "v",
      function()
        ---@diagnostic disable-next-line: missing-parameter
        require("lib.create").create_snippet()
      end,
    },
  },
}
