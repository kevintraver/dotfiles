return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    defaults = {
      ["<leader>m"] = { name = "+bookmarks" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>r"] = { name = "+replace" },
      ["<leader>h"] = { name = "+githunk" },
      ["<leader>q"] = { name = "+recorder" },
      ["<leader>d"] = { name = "+debug" },
      ["<leader>l"] = { name = "+lazy" },
      ["<leader>o"] = { name = "+open" },
    },
  },
}
