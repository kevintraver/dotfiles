return {
  "folke/edgy.nvim",
  opts = {
    keys = {
      ["<A-w>"] = function(win)
        win:close()
      end,
    },
    animate = {
      enabled = false,
    },
  },
}
