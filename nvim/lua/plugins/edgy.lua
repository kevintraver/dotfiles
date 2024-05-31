return {
  "folke/edgy.nvim",
  event = "WinNew",
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
