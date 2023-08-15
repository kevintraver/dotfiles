return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      move_cursor = false,
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "s",
        normal_cur = "ss",
        normal_line = "S",
        normal_cur_line = "SS",
        visual = "S",
        visual_line = "S",
        delete = "ds",
        change = "cs",
        change_line = "cS",
      },
    })
  end,
}
