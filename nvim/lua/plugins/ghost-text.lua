-- https://github.com/subnut/nvim-ghost.nvim

return {
  "subnut/nvim-ghost.nvim",
  cond = not vim.g.vscode,
  build = ":call nvim_ghost#installer#install()",
  lazy = false,
}