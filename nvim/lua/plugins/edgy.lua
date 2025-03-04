return {
  "folke/edgy.nvim",
  opts = {
    keys = {
      ["<D-w>"] = function(win)
        win:close()
      end,
    },
    animate = {
      enabled = false,
    },
  },
}
