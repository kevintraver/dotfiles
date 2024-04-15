return {
  "bloznelis/before.nvim",
  enabled = false,
  config = function()
    require("before").setup()
    require("telescope").load_extension("before")
  end,
}
