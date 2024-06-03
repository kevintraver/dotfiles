return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "fredrikaverpil/neotest-golang",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-golang"),
        },
      })
    end,
  },
  {
    "nvim-neotest/neotest-go",
    enabled = false,
  },
}
