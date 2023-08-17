-- https://github.com/Wansmer/treesj

return {
  "Wansmer/treesj",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup({
      use_default_keymaps = false,
    })
    vim.keymap.set({ "n" }, "gj", ":join<CR>", {})
    vim.keymap.set({ "n" }, "gJ", ":join!<CR>", {})
    vim.keymap.set({ "n" }, "J", "<cmd>lua require('treesj').toggle()<CR>", {})
  end,
}
