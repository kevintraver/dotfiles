return {
  "ghassan0/telescope-glyph.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        glyph = {
          action = function(glyph)
            vim.fn.setreg('"', glyph.value)
            vim.api.nvim_put({ glyph.value }, "c", false, true)
          end,
        },
      },
    })
    require("telescope").load_extension("glyph")
  end,
  keys = {
    {
      "<leader>sE",
      function()
        require("telescope").extensions.glyph.glyph()
      end,
      desc = "Glyphs",
    },
  },
}
