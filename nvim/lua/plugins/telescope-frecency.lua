return {
  "nvim-telescope/telescope-frecency.nvim",
  enabled = false,
  lazy = true,
  config = function()
    require("telescope").load_extension("frecency")
  end,
  dependencies = { "kkharji/sqlite.lua" },
}
