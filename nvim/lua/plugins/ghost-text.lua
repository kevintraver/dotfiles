return {
  "subnut/nvim-ghost.nvim",
  event = "VeryLazy",
  build = ":call nvim_ghost#installer#install()",
}
