-- https://github.com/kdheepak/lazygit.nvim

return {
  "kdheepak/lazygit.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("lazy").setup({})
  end,
}
