return {
  "tsakirist/telescope-lazy.nvim",
  lazy = true,
  config = function()
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
