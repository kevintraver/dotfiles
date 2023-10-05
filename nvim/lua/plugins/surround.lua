return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  opts = {
    move_cursor = false,
    keymaps = {
      insert = "<C-g>s",
      insert_line = "<C-g>S",
      normal = "gsa",
      normal_cur = "gsl",
      normal_line = "gsL",
      normal_cur_line = "gSS",
      visual = "gsa",
      visual_line = "gsl",
      delete = "gsd",
      change = "gsc",
      change_line = "gsC",
    },
  },
}
