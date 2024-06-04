return {
  "folke/tokyonight.nvim",
  event = "VeryLazy",
  opts = {
    style = "storm",
    on_highlights = function(highlights, colors)
      highlights.BufferLineFill = {
        bg = colors.bg_dark,
      }
    end,
  },
}
