-- https://github.com/rest-nvim/rest.nvim

return {
  "rest-nvim/rest.nvim",
  ft = { "http" },
  keys = {
    {
      "<leader>r",
      function()
        require("rest-nvim").run()
      end,
      { desc = "Send HTTP Request" },
    },
  },
}
