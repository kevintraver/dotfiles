return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_x = {},
    },
    extensions = {
      "lazy",
      "quickfix",
      "oil",
      "neo-tree",
      "mason",
      "trouble",
    },
  },
}
