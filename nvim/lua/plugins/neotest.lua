-- https://github.com/nvim-neotest/neotest

return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "rouge8/neotest-rust",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rust"),
      },
    })
  end,
  keys = {
    {
      "<leader>tr",
      function()
        require("neotest").run.run()
      end,
      desc = "Run tests",
    },
  },
}
