-- https://github.com/folke/which-key.nvim

return {
  "folke/which-key.nvim",
  opts = {
    defaults = {
      ["m"] = { name = "+bookmarks" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>r"] = { name = "+replace" },
    },
  },
}
