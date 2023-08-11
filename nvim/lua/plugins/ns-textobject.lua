return {
  "XXiaoA/ns-textobject.nvim",
  dependencies = { "nvim-surround" },
  config = function()
    require("ns-textobject").setup({
      disable_builtin_mapping = {
        enabled = true,
        -- list of char which shouldn't mapping by auto_mapping
        chars = { "a", "i", "b", "B", "t", "`", "'", '"', "{", "}", "(", ")", "[", "]", "<", ">" },
      },
    })
  end,
}
