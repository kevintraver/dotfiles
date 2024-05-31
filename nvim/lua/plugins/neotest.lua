return {
  {
    "nvim-neotest/neotest",
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
