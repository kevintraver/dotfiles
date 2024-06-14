return {
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    keys = {
      {
        "<leader>tw",
        function()
          require("neotest").watch.toggle(vim.fn.expand("%"))
        end,
        desc = "Watch File",
      },
    },
  },
}
