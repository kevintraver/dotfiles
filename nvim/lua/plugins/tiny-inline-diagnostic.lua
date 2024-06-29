return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  enabled = false,
  config = function()
    vim.opt.updatetime = 100
    vim.diagnostic.config({ virtual_text = false })
    require("tiny-inline-diagnostic").setup()
  end,
}
