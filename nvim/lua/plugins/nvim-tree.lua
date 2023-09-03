-- https://github.com/nvim-tree/nvim-tree.lua

return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  requires = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup()
  end,
}
