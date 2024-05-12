return {
  "folke/tokyonight.nvim",
  event = "VeryLazy",
  opts = {
    on_highlights = function(highlights, colors)
      highlights.BufferLineFill = {
        bg = colors.bg_dark,
      }
    end,
  },
}
