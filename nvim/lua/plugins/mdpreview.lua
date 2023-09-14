-- https://github.com/mrjones2014/mdpreview.nvim

return {
  "mrjones2014/mdpreview.nvim",
  event = "VeryLazy",
  ft = "markdown",
  dependencies = {
    "norcalli/nvim-terminal.lua",
    config = true,
  },
}
