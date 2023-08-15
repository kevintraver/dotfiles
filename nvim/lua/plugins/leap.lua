return {
  "ggandor/leap.nvim",
  config = function()
    vim.keymap.set({ "n", "x" }, "S", "<Plug>(leap-backward-to)")
    vim.keymap.set({ "n", "x" }, "s", "<Plug>(leap-forward-to)")
  end,
}
