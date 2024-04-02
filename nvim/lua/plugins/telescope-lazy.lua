return {
  "tsakirist/telescope-lazy.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        lazy = {
          open_in_browser_opts = {
            close_window_after_action = true,
          },
          mappings = {
            open_in_live_grep = "<C-s>",
          },
        },
      },
    })
    require("telescope").load_extension("lazy")
  end,
}
