-- https://github.com/kdheepak/lazygit.nvim

return {
  "kdheepak/lazygit.nvim",
  cond = not vim.g.vscode,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("lazy").setup({})

    vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Lazygit" })
  end,
}
