return {
  "nvim-telescope/telescope-frecency.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("frecency")
  end,
  dependencies = { "kkharji/sqlite.lua" },
  keys = {
    {
      "<A-o>",
      mode = { "n", "i" },
      function()
        require("telescope").extensions.frecency.frecency()
      end,
      desc = "Recent",
    },
  },
}
