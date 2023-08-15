return {
  "ggandor/leap.nvim",
  config = function()
    vim.keymap.set({ "n" }, "S", "<Plug>(leap-backward-to)")
    vim.keymap.set({ "n" }, "s", "<Plug>(leap-forward-to)")

    vim.keymap.set({ "o", "x" }, "Z", "<Plug>(leap-backward-till)")
    vim.keymap.set({ "o", "x" }, "z", "<Plug>(leap-forward-till)")
  end,
}
