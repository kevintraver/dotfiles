-- https://github.com/rest-nvim/rest.nvim

return {
  "rest-nvim/rest.nvim",
  ft = { "http" },
  config = function()
    require("rest-nvim").setup()
    vim.keymap.set("n", "<leader>r", "<Plug>RestNvim<CR>", { desc = "Send HTTP Request" })
  end,
}
