-- https://github.com/kylechui/nvim-surround

return {
  "kylechui/nvim-surround",
  opts = {
    move_cursor = false,
    keymaps = {
      normal = "gs",
      normal_cur = "gss",
      visual = "gs",
      delete = "gds",
      change = "gcs",
      change_line = "gcS",
    },
  },
}
