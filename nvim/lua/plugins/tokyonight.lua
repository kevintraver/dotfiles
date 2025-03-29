return {
  "folke/tokyonight.nvim",
  opts = {
    style = "night",
    on_highlights = function(highlights, colors)
      highlights.BufferLineFill = {
        bg = colors.bg_dark,
      }
    end,
  },
}
