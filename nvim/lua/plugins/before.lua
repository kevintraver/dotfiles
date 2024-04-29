return {
  "bloznelis/before.nvim",
  enabled = true,
  config = function()
    require("before").setup()
    require("telescope").load_extension("before")
  end,
}
