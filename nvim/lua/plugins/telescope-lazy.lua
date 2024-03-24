return {
  "tsakirist/telescope-lazy.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        lazy = {
          mappings = {
            open_in_live_grep = "<C-s>",
          },
        },
      },
    })
    require("telescope").load_extension("lazy")
  end,
  keys = {
    {
      "<leader>fl",
      function()
        require("telescope").extensions.lazy.lazy()
      end,
      desc = "Find Lazy Plugin",
    },
  },
}
