return {
  "tsakirist/telescope-lazy.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        lazy = {
          actions_opts = {
            open_in_browser = {
              auto_close = true,
            },
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
