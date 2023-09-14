-- https://github.com/iamcco/markdown-preview.nvim

return {
  "iamcco/markdown-preview.nvim",
  event = "VeryLazy",
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
}
