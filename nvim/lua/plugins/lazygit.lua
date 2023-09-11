-- https://github.com/kdheepak/lazygit.nvim

return {
  "kdheepak/lazygit.nvim",
  cond = not vim.g.vscode,
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>gg",
      function()
        require("lazygit").lazygit()
      end,
      { desc = "Lazygit" },
    },
  },
}
