return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        normal = "'",
        visual = "'",
        delete = "d'",
        change = "c'",
      },
      move_cursor = false,
    })
  end,
}
