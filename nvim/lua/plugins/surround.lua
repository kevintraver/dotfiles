-- https://github.com/kylechui/nvim-surround

return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      move_cursor = false,
      keymaps = {
        normal = "s",
        normal_cur = "sl",
        normal_cur_line = "sal",
        visual = "s",
        visual_line = "sl",
        delete = "ds",
        change = "cs",
        change_line = "cS",
      },
    })
  end,
}
