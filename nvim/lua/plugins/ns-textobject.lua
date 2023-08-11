return {
  "XXiaoA/ns-textobject.nvim",
  dependencies = { "nvim-surround" },
  config = function()
    require("ns-textobject").setup()
  end,
}
