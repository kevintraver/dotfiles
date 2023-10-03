return {
  "2kabhishek/nerdy.nvim",
  event = "VeryLazy",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>si",
      function()
        require("nerdy").list()
      end,
      desc = "Icons",
    },
  },
}
