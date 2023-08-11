return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      move_cursor = false,
      keymaps = {
        visual = "ys",
        visual_line = "yS",
      },
    })
  end,
}
