return {
  "nvim-telescope/telescope-frecency.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("frecency")
  end,
  dependencies = { "kkharji/sqlite.lua" },
}
