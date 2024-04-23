return {
  "mrjones2014/legendary.nvim",
  enabled = false,
  priority = 10000,
  lazy = false,
  config = function()
    require("legendary").setup({
      extensions = {
        lazy_nvim = true,
        nvim_tree = true,
        diffview = true,
      },
    })
  end,
}
