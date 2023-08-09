return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      move_cursor = false,
    })
  end,
}
