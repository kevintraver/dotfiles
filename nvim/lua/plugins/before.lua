return {
  "bloznelis/before.nvim",
  enabled = true,
  event = "VeryLazy",
  config = function()
    require("before").setup()
    require("telescope").load_extension("before")
  end,
}
