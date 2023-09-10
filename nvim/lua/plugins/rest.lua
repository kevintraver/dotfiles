return {
  "rest-nvim/rest.nvim",
  config = function()
    require("rest-nvim").setup()
    vim.keymap.set("n", "<leader>r", "<Plug>RestNvim<CR>", { desc = "Send HTTP Request" })
  end,
}
