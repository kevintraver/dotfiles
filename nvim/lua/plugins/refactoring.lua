return {
  "ThePrimeagen/refactoring.nvim",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = true,
  keys = {
    {
      mode = { "x" },
      "<leader>crb",
      function()
        require("refactoring").refactor("Extract Block")
      end,
    },
  },
}
