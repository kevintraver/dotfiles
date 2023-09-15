-- https://github.com/kylechui/nvim-surround

return {
  "kylechui/nvim-surround",
  opts = {
    move_cursor = false,
    keymaps = {
      normal = "gs",
      normal_cur = "gsl",
      visual = "gs",
      delete = "gds",
      change = "grs",
      change_line = "gS",
    },
  },
}
