-- https://github.com/rest-nvim/rest.nvim

return {
  "rest-nvim/rest.nvim",
  ft = { "http" },
  keys = {
    {
      "<leader>r",
      "<Plug>RestNvim<CR>",
      { desc = "Send HTTP Request" },
    },
  },
}
